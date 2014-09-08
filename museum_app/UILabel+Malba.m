//
//  UILabel+Malba.m
//  museum_app
//
//  Created by Emiliano Bivachi on 08/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import "UILabel+Malba.h"
#import <QuartzCore/QuartzCore.h>

@implementation UILabel (Malba)

+ (UILabel *)labelWithFrame:(CGRect)frame andMalbaFontSize:(CGFloat)size {
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    label.font = [UIFont malbaFontWithSize:size];
    return label;
}

+ (UILabel *)labelWithFrame:(CGRect)frame andRobotoFontSize:(CGFloat)size {
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    label.font = [UIFont robotoFontWithSize:size];
    return label;
}

+ (UILabel *)labelWithFrame:(CGRect)frame andRobotoLightFontSize:(CGFloat)size {
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    label.font = [UIFont robotoLightWithSize:size];
    return label;
}

+ (UILabel *)labelWithFrame:(CGRect)frame andRobotoMediumFontSize:(CGFloat)size {
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    label.font = [UIFont robotoMediumWithSize:size];
    return label;
}

- (void)reSizeHeightToFitWidth:(CGFloat)width {
    self.numberOfLines = 5;
    //self.layer.borderWidth = 1.0;
    CGSize maxSize = CGSizeMake(width, CGFLOAT_MAX);
    CGSize requiredSize = [self sizeThatFits:maxSize];
    //requiredSize.width = width;
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, requiredSize.width, requiredSize.height);
}

@end
