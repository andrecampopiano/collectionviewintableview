//
//  UIView+Utils.m
//  ALCCollectionInTableView
//
//  Created by André Campopiano on 18/01/17.
//  Copyright © 2017 André Campopiano. All rights reserved.
//

#import "UIViewController+Utils.h"

@implementation UIViewController (Utils)

+ (CGFloat)heightForText:(NSString *)bodyText withFontSize:(CGFloat) fontSize
{
    
    NSAttributedString *attributedText =
    [[NSAttributedString alloc] initWithString:bodyText
                                    attributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:fontSize]}];
    CGRect rect = [attributedText boundingRectWithSize:(CGSize){300, CGFLOAT_MAX}
                                               options:NSStringDrawingUsesLineFragmentOrigin
                                               context:nil];
    CGFloat height =  rect.size.height;
    return height;
}

+ (CGFloat)heightForText:(NSString *)bodyText withFontSize:(CGFloat) fontSize labelSize:(NSInteger)labelSize
{
    
    NSAttributedString *attributedText =
    [[NSAttributedString alloc] initWithString:bodyText
                                    attributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:fontSize]}];
    CGRect rect = [attributedText boundingRectWithSize:(CGSize){labelSize, CGFLOAT_MAX}
                                               options:NSStringDrawingUsesLineFragmentOrigin
                                               context:nil];
    CGFloat height =  rect.size.height;
    return height;
}


@end
