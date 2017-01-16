//
//  ViewController.m
//  ALCCollectionInTableView
//
//  Created by André Campopiano on 12/01/17.
//  Copyright © 2017 André Campopiano. All rights reserved.
//

#import "ViewController.h"
#import "CellServicos.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"CellServicos" bundle:nil] forCellReuseIdentifier:@"cellServicos"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CellServicos *cell = [tableView dequeueReusableCellWithIdentifier:@"cellServicos"];
    
    
    return cell ;
    
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150;
}
@end
