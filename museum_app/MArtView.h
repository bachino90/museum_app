//
//  MArtView.h
//  museum_app
//
//  Created by Emiliano Bivachi on 05/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MArt.h"

@interface MArtView : UIView

@property (nonatomic, readonly) MArt *art;

- (instancetype)initWithArt:(MArt *)art;


@end
