//
//  FeedbackCell.h
//  ALCCollectionInTableView
//
//  Created by André Campopiano on 17/01/17.
//  Copyright © 2017 André Campopiano. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CellFeedbackDelegate <NSObject>

-(void)setCommentsCell:(NSDictionary *)userFeedback;

@end

@interface FeedbackCell : UITableViewCell

@property(weak,nonatomic) id<CellFeedbackDelegate>delegate;

@end
