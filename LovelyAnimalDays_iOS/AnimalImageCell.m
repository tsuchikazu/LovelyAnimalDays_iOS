//
//  AnimalImageCell.m
//  LovelyAnimalDays_iOS
//
//  Created by 土屋 和良 on 2014/06/10.
//  Copyright (c) 2014年 土屋 和良. All rights reserved.
//

#import "AnimalImageCell.h"

@implementation AnimalImageCell

@synthesize imageView;

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
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
