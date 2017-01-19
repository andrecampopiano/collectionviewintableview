//
//  UIViewController+Utils.h
//  ALCCollectionInTableView
//
//  Created by André Campopiano on 18/01/17.
//  Copyright © 2017 André Campopiano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Utils)

+ (CGFloat)heightForText:(NSString *)bodyText withFontSize:(CGFloat) fontSize;
+ (CGFloat)heightForText:(NSString *)bodyText withFontSize:(CGFloat) fontSize labelSize:(NSInteger)labelSize;



@end
