//
//  AppDelegate.h
//  StudyInCoreData
//
//  Created by Cyrus on 12/19/13.
//  Copyright (c) 2013 Daniel Ramteke. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"
#import "AnimalController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (strong, nonatomic) MainViewController* mainViewController;
@property (strong, nonatomic) AnimalController* animalController;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
