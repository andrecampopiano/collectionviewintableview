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

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"CellServicos" bundle:nil] forCellReuseIdentifier:@"cellServicos"];
    [self.tableView registerNib:[UINib nibWithNibName:@"FeedbackCell" bundle:nil] forCellReuseIdentifier:@"cellFeedback"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
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
            cell = cellFeed;
        }
         break;
    }
    return cell ;
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
    }
    
    return heightRow;
}
@end
