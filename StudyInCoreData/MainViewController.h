//
//  MainViewController.h
//  StudyInCoreData
//
//  Created by Cyrus on 12/19/13.
//  Copyright (c) 2013 Daniel Ramteke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UITableViewController
-(instancetype)initWithContext:(NSManagedObjectContext*)context;
@property (nonatomic, strong) NSFetchedResultsController* fetchController;
@end
