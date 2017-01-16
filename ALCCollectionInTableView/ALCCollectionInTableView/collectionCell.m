//
//  CollectionCell.m
//  ALCCollectionInTableView
//
//  Created by André Campopiano on 16/01/17.
//  Copyright © 2017 André Campopiano. All rights reserved.
//

#import "CollectionCell.h"

@interface CollectionCell()

@property (weak, nonatomic) IBOutlet UIImageView *imgCell;

@property (weak, nonatomic) IBOutlet UILabel *lblCell;

@end

@implementation CollectionCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)setImageCell:(NSString *)imgName{
    self.imgCell.image = [UIImage imageNamed:imgName];
}

-(void)setLblCellText:(NSString *)lblname{
    self.lblCell.text = lblname;
}
@end
