//
//  DashLineView.m
//  museum_app
//
//  Created by Emiliano Bivachi on 08/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import "DashLineView.h"

@implementation DashLineView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
    
    CGFloat dashes[2] = {3,2};
    CGContextSetLineDash(context, 0.0, dashes, 2);
    CGContextSetLineWidth(context, 1.5);
    
    CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMaxY(rect));
    CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMaxY(rect));
    
    CGContextStrokePath(context);
}


@end
