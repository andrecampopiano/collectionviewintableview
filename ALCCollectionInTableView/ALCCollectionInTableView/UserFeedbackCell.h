//
//  UserFeedbackCell.h
//  ALCCollectionInTableView
//
//  Created by André Campopiano on 17/01/17.
//  Copyright © 2017 André Campopiano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserFeedbackCell : UICollectionViewCell

-(void)setUserImg:(NSString*)imgName;

-(void)setRatingStar:(float)value;

-(void)showBorder;

-(void)hideBorder;
@end
