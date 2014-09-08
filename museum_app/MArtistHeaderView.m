//
//  MArtistHeaderView.m
//  museum_app
//
//  Created by Emiliano Bivachi on 05/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import "MArtistHeaderView.h"
#import "DashLineView.h"

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

#define MARGIN 20.0f

- (instancetype)initWithArt:(MArt *)art andWidth:(CGFloat)width {
    self = [self initWithFrame:CGRectMake(0.0, 0.0, width, 0.0)];
    if (self) {
        width -= 2*MARGIN;
        CGFloat height = 0;
        UILabel *artName = [UILabel labelWithFrame:CGRectMake(MARGIN, 0.0, 0.0, 0.0) andRobotoFontSize:17.0];
        artName.text = art.name;
        [artName reSizeHeightToFitWidth:width];
        
        height += artName.frame.size.height;
        
        DashLineView *dash1 = [[DashLineView alloc]initWithFrame:CGRectMake(MARGIN, height, width, 2.0)];
        height += dash1.frame.size.height;
        
        UILabel *artistName = [UILabel labelWithFrame:CGRectMake(MARGIN, height, 0.0, 0.0) andRobotoMediumFontSize:15.0];
        artistName.text = art.artist;//[NSString stringWithFormat:@"%@, %@", art.artist, art.year];
        [artistName reSizeHeightToFitWidth:width];
        height += artistName.frame.size.height;
        
        UILabel *size = [UILabel labelWithFrame:CGRectMake(MARGIN, height, 0.0, 0.0) andRobotoLightFontSize:13.0];
        size.text = [NSString stringWithFormat:@"Año: %@, Tamaño: %@", art.year, art.size];//size.text = art.size;
        [size reSizeHeightToFitWidth:width];
        height += size.frame.size.height;
        
        [self addSubview:artName];
        [self addSubview:dash1];
        [self addSubview:artistName];
        [self addSubview:size];
        
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height);
        self.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.5];
    }
    return self;
}

+ (CGFloat)heightForArt:(MArt *)art andWidth:(CGFloat)width {
    width -= 2*MARGIN;
    CGFloat height = 0;
    UILabel *artName = [UILabel labelWithFrame:CGRectMake(MARGIN, 0.0, 0.0, 0.0) andRobotoFontSize:17.0];
    artName.text = art.name;
    [artName reSizeHeightToFitWidth:width];
    
    height += artName.frame.size.height;
    
    UILabel *artistName = [UILabel labelWithFrame:CGRectMake(MARGIN, height, 0.0, 0.0) andRobotoLightFontSize:15.0];
    artistName.text = [NSString stringWithFormat:@"%@, %@", art.artist, art.year];
    [artistName reSizeHeightToFitWidth:width];
    height += artistName.frame.size.height;
    
    UILabel *size = [UILabel labelWithFrame:CGRectMake(MARGIN, height, 0.0, 0.0) andRobotoLightFontSize:13.0];
    size.text = art.size;
    [size reSizeHeightToFitWidth:width];
    height += size.frame.size.height;
    return height;
}

@end
