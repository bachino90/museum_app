//
//  MArtViewController.h
//  museum_app
//
//  Created by Emiliano Bivachi on 05/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MArt.h"

@class MArtViewController;

@protocol MArtViewControllerDelegate <NSObject>
- (void)dismissMArtViewController:(MArtViewController *)mavc;
@end

@interface MArtViewController : UIViewController

@property (nonatomic, weak) id <MArtViewControllerDelegate> delegate;
@property (nonatomic, strong) MArt *art;

@end
