//
//  ArtistHeaderView.m
//  museum_app
//
//  Created by Emiliano Bivachi on 05/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import "ArtistHeaderView.h"

@implementation ArtistHeaderView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (instancetype)initWithArt:(MArt *)art {
    self = [self initWithFrame:CGRectMake(0.0, 0.0, 0.0, 0.0)];
    if (self) {
        UILabel *artName = [[UILabel alloc]initWithFrame:CGRectZero];
        artName.text = art.name;
        UILabel *artistName = [[UILabel alloc] initWithFrame:CGRectZero];
        artistName.text = art.artist;
        UILabel *year = [[UILabel alloc] initWithFrame:CGRectZero];
        year.text = art.year;
        UILabel *size = [[UILabel alloc] initWithFrame:CGRectZero];
        size.text = art.size;
        
        [self addSubview:artName];
        [self addSubview:artistName];
        [self addSubview:year];
        [self addSubview:size];
    }
    return self;
}

@end
