//
//  EditDetailViewController.h
//  StudyInCoreData
//
//  Created by Cyrus on 12/20/13.
//  Copyright (c) 2013 Daniel Ramteke. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Animal.h"

@interface EditDetailViewController : UITableViewController
- (id)initWithAnimal:(Animal*)animal;

@property (nonatomic, weak) Animal* animal;
@end
