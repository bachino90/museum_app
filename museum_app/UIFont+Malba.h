//
//  UIFont+Malba.h
//  museum_app
//
//  Created by Emiliano Bivachi on 08/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (Malba)

+ (UIFont *)malbaFontWithSize:(CGFloat)size;
+ (UIFont *)robotoFontWithSize:(CGFloat)size;
+ (UIFont *)robotoLightWithSize:(CGFloat)size;
+ (UIFont *)robotoMediumWithSize:(CGFloat)size;

@end