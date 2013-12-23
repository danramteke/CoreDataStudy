//
//  EditDetailCell.m
//  StudyInCoreData
//
//  Created by Cyrus on 12/23/13.
//  Copyright (c) 2013 Daniel Ramteke. All rights reserved.
//

#import "EditDetailCell.h"
#import "NSLayoutConstraint+DRAutolayout.h"
#import "NSObject+DRTap.h"

@implementation EditDetailCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.textField = [[[UITextField alloc] init] tap:^(UITextField* textField) {
            textField.translatesAutoresizingMaskIntoConstraints = NO;
        }];
        
        [self.contentView addSubview:self.textField];
        [self.contentView addConstraints:@[
                                           [NSLayoutConstraint left:self.textField toLeft:self.contentView multiplier:1 constant:15],
                                           [NSLayoutConstraint right:self.textField toRight:self.contentView multiplier:1 constant:0],
                                           [NSLayoutConstraint centerY:self.textField toCenterY:self.contentView]
                                           ]];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
