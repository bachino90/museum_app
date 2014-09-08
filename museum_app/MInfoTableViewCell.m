//
//  MInfoTableViewCell.m
//  museum_app
//
//  Created by Emiliano Bivachi on 08/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import "MInfoTableViewCell.h"

@interface MInfoTableViewCell ()
@property (nonatomic, weak) IBOutlet UILabel *infoLabel;
@property (nonatomic, readwrite) CGFloat requiredCellHeight;
@end

@implementation MInfoTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
    //self.infoLabel.layer.borderWidth = 1.0;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setArtInfo:(NSString *)info {
    _artInfo = info;
    NSAttributedString *str = [[NSAttributedString alloc]initWithString:info attributes:[self.infoLabel.attributedText attributesAtIndex:0 effectiveRange:NULL]];
    self.infoLabel.attributedText = str;
    self.infoLabel.font = [UIFont robotoLightWithSize:17.0f];
    [self setNeedsLayout];
    [self layoutSubviews];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat width = self.infoLabel.frame.size.width;
    CGSize maxSize = CGSizeMake(width, CGFLOAT_MAX);
    CGSize requiredSize = [self.infoLabel sizeThatFits:maxSize];
    requiredSize.width = width;
    self.infoLabel.frame = CGRectMake(self.infoLabel.frame.origin.x, self.infoLabel.frame.origin.y, requiredSize.width, requiredSize.height);
    self.requiredCellHeight = requiredSize.height;
}

@end
