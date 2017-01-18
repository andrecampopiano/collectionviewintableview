//
//  UserFeedbackCell.m
//  ALCCollectionInTableView
//
//  Created by André Campopiano on 17/01/17.
//  Copyright © 2017 André Campopiano. All rights reserved.
//

#import "UserFeedbackCell.h"
#import "DJWStarRatingView.h"

@interface UserFeedbackCell()
@property (weak, nonatomic) IBOutlet UIImageView *userPicture;
@property (weak, nonatomic) IBOutlet DJWStarRatingView *startRating;


@end

@implementation UserFeedbackCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    // Initialization code
}


-(void)setUserImg:(NSString *)imgName{
    self.userPicture.image = [UIImage imageNamed:imgName];
}

-(void)setRatingStar:(float)value{
    self.startRating.rating = value;
}

-(void)showBorder{
    self.userPicture.layer.borderWidth = 3.0f;
    self.userPicture.layer.borderColor = [UIColor colorWithRed:0.96 green:0.81 blue:0.34 alpha:1.0].CGColor;
}

-(void)hideBorder{
    self.userPicture.layer.borderWidth = 0;
}
@end
