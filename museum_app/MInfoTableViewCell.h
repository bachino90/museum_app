//
//  MInfoTableViewCell.h
//  museum_app
//
//  Created by Emiliano Bivachi on 08/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MInfoTableViewCell : UITableViewCell

@property (nonatomic, readonly) CGFloat requiredCellHeight;
@property (nonatomic, strong) NSString *artInfo;

@end
