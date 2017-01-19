//
//  CellComments.m
//  ALCCollectionInTableView
//
//  Created by André Campopiano on 18/01/17.
//  Copyright © 2017 André Campopiano. All rights reserved.
//

#import "CellComments.h"
#import "UIViewController+Utils.h"

@interface CellComments()
@property (weak, nonatomic) IBOutlet UITextView *txtComments;
@property (weak, nonatomic) IBOutlet UILabel *lblName;

@end

@implementation CellComments

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setNameUser:(NSString *)userName{
    self.lblName.text = userName;
}

-(void)setTxtComment:(NSString *)txtcomment{
    [self.txtComments setText:txtcomment];
}

@end
