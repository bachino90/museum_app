//
//  MBeaconsViewController.m
//  museum_app
//
//  Created by Emiliano Bivachi on 05/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import "MBeaconsViewController.h"
#import "GBeaconManager.h"
#import "GBeacon.h"
#import "MArt.h"
#import "MArtViewController.h"

@interface MBeaconsViewController () <GBeaconManagerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *adviseLabel;
@property (nonatomic, strong) GBeaconManager *beaconManager;
@end

@implementation MBeaconsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.beaconManager = [GBeaconManager sharedManager];
    self.beaconManager.delegate = self;
    [self.beaconManager startScanning];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"BeaconSegue"]) {
        MArtViewController *mavc = (MArtViewController *)segue.destinationViewController;
        mavc.art = [MArt testData][0];
    }
}

#pragma mark GBeaconManager Delegate

- (void)beaconManager:(GBeaconManager *)beaconManager hasFoundBeacon:(GBeacon *)beacon {
    [self performSegueWithIdentifier:@"BeaconSegue" sender:nil];
}

- (void)beaconManager:(GBeaconManager *)beaconManager hasLostBeacon:(GBeacon *)beacon {
    
}

- (void)beaconManager:(GBeaconManager *)beaconManager removeKVOFromIndex:(NSInteger)index {
    
}


@end
