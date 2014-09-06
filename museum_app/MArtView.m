//
//  MArtView.m
//  museum_app
//
//  Created by Emiliano Bivachi on 05/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import "MArtView.h"

@interface MArtView () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, readwrite) MArt *art;
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation MArtView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (instancetype)initWithArt:(MArt *)art {
    CGRect frame;
    self = [self initWithFrame:frame];
    if (self) {
        self.art = art;
        self.tableView = [[UITableView alloc]init];
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

#pragma mark UITableViewCell Data Source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (NSString *)cellIdentifierForArtist {
    static NSString *CellArtistIdentifier = @"ArtistDataTableViewCell";
    return CellArtistIdentifier;
}

- (NSString *)cellIdentifierForInfo {
    static NSString *CellInfoIdentifier = @"MoreInfoTableViewCell";
    return CellInfoIdentifier;
}

- (NSString *)cellIdentifierForBlank {
    static NSString *CellBlankIdentifier = @"BlankTableViewCell";
    return CellBlankIdentifier;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    if (indexPath.row == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:[self cellIdentifierForArtist] forIndexPath:indexPath];
    } else if (indexPath.row == 1) {
        cell = [tableView dequeueReusableCellWithIdentifier:[self cellIdentifierForInfo] forIndexPath:indexPath];
    } else if (indexPath.row == 2) {
        cell = [tableView dequeueReusableCellWithIdentifier:[self cellIdentifierForBlank] forIndexPath:indexPath];
    }
    return cell;
}

@end
