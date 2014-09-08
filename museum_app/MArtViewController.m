//
//  MArtViewController.m
//  museum_app
//
//  Created by Emiliano Bivachi on 05/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import "MArtViewController.h"
#import "MArtistHeaderView.h"
#import "MInfoTableViewCell.h"

@interface MArtViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic) CGFloat headerViewHeight;
@property (nonatomic, strong) MArtistHeaderView *headerView;
@end

@implementation MArtViewController {
    dispatch_once_t onceToken;
    NSMutableDictionary *rowHeightCache;
    MInfoTableViewCell *sizingCell;
}

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
    rowHeightCache = [NSMutableDictionary dictionary];
    self.headerView = [[MArtistHeaderView alloc]initWithArt:self.art andWidth:self.tableView.frame.size.width];
    //UIImageView *artImage = [UIImage imageNamed:artImage];
    //self.tableView.tableHeaderView = artImage;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark UITableViewCell Data Source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSString *)cellIdentifierForInfo {
    static NSString *CellInfoIdentifier = @"MoreInfoTableViewCell";
    return CellInfoIdentifier;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MInfoTableViewCell *cell = (MInfoTableViewCell *)[tableView dequeueReusableCellWithIdentifier:[self cellIdentifierForInfo] forIndexPath:indexPath];
    cell.artInfo = self.art.info;
    [cell setNeedsLayout];
    [cell layoutIfNeeded];
    return cell;
}

#pragma mark UITableViewCell Delegate

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return self.headerView;
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return self.headerView.frame.size.height;
}

- (void)adjustSizingCellWidthToTableWidth {
    sizingCell.frame = CGRectMake(0, 0, CGRectGetWidth(self.tableView.bounds), 0);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    dispatch_once(&onceToken, ^{
        sizingCell = (MInfoTableViewCell *)[self.tableView dequeueReusableCellWithIdentifier:[self cellIdentifierForInfo]];
        //[self adjustSizingCellWidthToTableWidth];
    });
    NSString *index = @"Info";
    if (rowHeightCache[index] == nil) {
        sizingCell.artInfo = self.art.info;
        CGFloat rowHeight = sizingCell.requiredCellHeight;
        [sizingCell setNeedsLayout];
        [sizingCell layoutIfNeeded];
        rowHeightCache[index] = @(rowHeight);
    }
    return [rowHeightCache[index] floatValue];
}

@end
