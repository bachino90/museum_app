//
//  UIFont+Malba.m
//  museum_app
//
//  Created by Emiliano Bivachi on 08/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import "UIFont+Malba.h"

@implementation UIFont (Malba)

+ (UIFont *)malbaFontWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"MalbaSans-Plain" size:size];
}

+ (UIFont *)robotoFontWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"Roboto-Regular" size:size];
}

+ (UIFont *)robotoLightWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"Roboto-Light" size:size];
}

+ (UIFont *)robotoMediumWithSize:(CGFloat)size {
    return [UIFont fontWithName:@"Roboto-Medium" size:size];
}

@end
