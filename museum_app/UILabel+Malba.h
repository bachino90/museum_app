//
//  UILabel+Malba.h
//  museum_app
//
//  Created by Emiliano Bivachi on 08/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Malba)

+ (UILabel *)labelWithFrame:(CGRect)frame andMalbaFontSize:(CGFloat)size;
+ (UILabel *)labelWithFrame:(CGRect)frame andRobotoFontSize:(CGFloat)size;
+ (UILabel *)labelWithFrame:(CGRect)frame andRobotoLightFontSize:(CGFloat)size;
+ (UILabel *)labelWithFrame:(CGRect)frame andRobotoMediumFontSize:(CGFloat)size;

- (void)reSizeHeightToFitWidth:(CGFloat)width;

@end
