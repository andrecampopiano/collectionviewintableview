//
//  ViewController.m
//  ALCCollectionInTableView
//
//  Created by André Campopiano on 12/01/17.
//  Copyright © 2017 André Campopiano. All rights reserved.
//

#import "ViewController.h"
#import "CellServicos.h"
#import "FeedbackCell.h"
#import "CellComments.h"

@interface ViewController () <CellFeedbackDelegate>{
    NSDictionary *userFeed;
}
    

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
   
    [self.tableView registerNib:[UINib nibWithNibName:@"CellServicos" bundle:nil] forCellReuseIdentifier:@"cellServicos"];
    [self.tableView registerNib:[UINib nibWithNibName:@"FeedbackCell" bundle:nil] forCellReuseIdentifier:@"cellFeedback"];
    [self.tableView registerNib:[UINib nibWithNibName:@"CellComments" bundle:nil] forCellReuseIdentifier:@"cellComments"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    
    switch (indexPath.row) {
        case 0:{
            CellServicos *cellServ = [tableView dequeueReusableCellWithIdentifier:@"cellServicos"];
            cell = cellServ;
        }
        break;
        case 1:{
            FeedbackCell *cellFeed = [tableView dequeueReusableCellWithIdentifier:@"cellFeedback"];
            cellFeed.delegate = self;
            cell = cellFeed;
        }
         break;
        case 2:{
            CellComments *cellComments = [tableView dequeueReusableCellWithIdentifier:@"cellComments"];
            if(userFeed){
                [cellComments setNameUser:[userFeed objectForKey:@"user"]];
                [cellComments setTxtComment:[userFeed objectForKey:@"comments"]];
                cellComments.hidden = NO;
            }
            
            cell = cellComments;
        }
    }
    return cell ;
}

-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewAutomaticDimension;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat heightRow = 100;
    
    switch (indexPath.row) {
        case 0:
            
            heightRow = 150;
            break;
        case 1:
            heightRow = 190;
            break;
        case 2:{
            heightRow = UITableViewAutomaticDimension;
        }
    }
    
    return heightRow;
}

-(void)setCommentsCell:(NSDictionary *)userFeedback{
    
    userFeed = userFeedback;
    NSIndexPath *index = [NSIndexPath indexPathForItem:2 inSection:0];
    [self.tableView reloadRowsAtIndexPaths:@[index] withRowAnimation:UITableViewRowAnimationFade];
    
}

@end
