//
//  FYXViewController.h
//  museum_app
//
//  Created by Emiliano Bivachi on 05/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FYX/FYX.h>
#import <FYX/FYXVisitManager.h>
#import <FYX/FYXVisitManager.h>
#import <FYX/FYXTransmitter.h>

@interface FYXViewController : UIViewController <FYXServiceDelegate, FYXVisitDelegate>
@property (nonatomic) FYXVisitManager *visitManager;
@end
