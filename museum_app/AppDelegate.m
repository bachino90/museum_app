//
//  AppDelegate.m
//  museum_app
//
//  Created by Emiliano Bivachi on 19/08/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import "AppDelegate.h"
#import <ContextCore/QLContextCoreConnector.h>
#import <FYX/FYX.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    QLContextCoreConnector *connector = [QLContextCoreConnector new];
    [connector enableFromViewController:self.window.rootViewController success:^
     {
         NSLog(@"Gimbal enabled");
     } failure:^(NSError *error) {
         NSLog(@"Failed to initialize gimbal %@", error);
     }];
    [FYX setAppId:@"5fb4dad8e03e10fb54878d76084dac619077b7e065f8f9a523da0566387c1435" appSecret:@"d60c27d07b8bd06076a219bcc56d00622165ac5075519f4f5cfafb5f7cec4ef3" callbackUrl:@"combaxlabsmuseumapp://authcode"];
    
    NSArray *fontFamilies = [UIFont familyNames];
    for (int i = 0; i < [fontFamilies count]; i++)
    {
        NSString *fontFamily = [fontFamilies objectAtIndex:i];
        NSArray *fontNames = [UIFont fontNamesForFamilyName:[fontFamilies objectAtIndex:i]];
        NSLog (@"%@: %@", fontFamily, fontNames);
    }
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
