//
//  FeedbackCell.m
//  ALCCollectionInTableView
//
//  Created by André Campopiano on 17/01/17.
//  Copyright © 2017 André Campopiano. All rights reserved.
//

#import "FeedbackCell.h"
#import "UserFeedbackCell.h"

@interface FeedbackCell() <UICollectionViewDelegate, UICollectionViewDataSource>{
    NSDictionary *userFeedback;
}
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation FeedbackCell

static NSString *cellUserFeed = @"cellFeedback";

- (void)awakeFromNib {
    [super awakeFromNib];
    
    
    userFeedback = @{@"fotos": @[@"baca", @"cleber", @"matheus", @"peao", @"fernando"],
                     @"rating": @[ @1.2 , @4.3, @3.3, @2.3 , @5.0]};
    
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self.collectionView registerNib:[UINib nibWithNibName:@"UserFeedbackCell" bundle:nil] forCellWithReuseIdentifier:cellUserFeed];
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 5;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    UserFeedbackCell *userCell = [collectionView dequeueReusableCellWithReuseIdentifier:cellUserFeed forIndexPath:indexPath];
    [userCell setUserImg:[userFeedback objectForKey:@"fotos"][indexPath.row]];
    [userCell setRatingStar:[[userFeedback objectForKey:@"rating"][indexPath.row] floatValue]];
    
    
    return userCell;
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UserFeedbackCell *userCell = (UserFeedbackCell*)[self.collectionView cellForItemAtIndexPath:indexPath];
    [userCell showBorder];
    
}

-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath{
    UserFeedbackCell *userCell = (UserFeedbackCell*)[self.collectionView cellForItemAtIndexPath:indexPath];
    [userCell hideBorder];
    
}

-(void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UserFeedbackCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if(cell.isSelected){
        [cell showBorder];
    }else{
        [cell hideBorder];
    }
}

@end
