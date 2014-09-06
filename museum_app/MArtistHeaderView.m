//
//  MArtistHeaderView.m
//  museum_app
//
//  Created by Emiliano Bivachi on 05/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import "MArtistHeaderView.h"

@implementation MArtistHeaderView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (instancetype)initWithArt:(MArt *)art andHeight:(CGFloat)height {
    self = [self initWithFrame:CGRectMake(0.0, 0.0, [UIScreen mainScreen].bounds.size.width, height)];
    if (self) {
        UILabel *artName = [[UILabel alloc]initWithFrame:CGRectMake(0.0, 0.0, 200.0, 35.0)];
        artName.text = art.name;
        UILabel *artistName = [[UILabel alloc] initWithFrame:CGRectMake(200.0, 0.0, 120.0, 35.0)];
        artistName.text = art.artist;
        UILabel *year = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 35.0, 200.0, 35.0)];
        year.text = art.year;
        UILabel *size = [[UILabel alloc] initWithFrame:CGRectMake(200.0, 35.0, 200.0, 35.0)];
        size.text = art.size;
        
        [self addSubview:artName];
        [self addSubview:artistName];
        [self addSubview:year];
        [self addSubview:size];
        
        self.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.5];
    }
    return self;
}

@end
