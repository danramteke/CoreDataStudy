//
//  EditDetailCell.m
//  StudyInCoreData
//
//  Created by Cyrus on 12/23/13.
//  Copyright (c) 2013 Daniel Ramteke. All rights reserved.
//

#import "EditDetailCell.h"

@implementation EditDetailCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.textField = [[UITextField alloc] init];
        
        [self.contentView addSubview:self.textField];
        [self.contentView addConstraints:@[
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
