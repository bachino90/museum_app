//
//  MArtistHeaderView.h
//  museum_app
//
//  Created by Emiliano Bivachi on 05/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MArt.h"

@interface MArtistHeaderView : UIView

- (instancetype)initWithArt:(MArt *)art andWidth:(CGFloat)width;
+ (CGFloat)heightForArt:(MArt *)art andWidth:(CGFloat)width;

@end
