//
//  AnimalController.m
//  StudyInCoreData
//
//  Created by Cyrus on 12/19/13.
//  Copyright (c) 2013 Daniel Ramteke. All rights reserved.
//

#import "AnimalController.h"
@interface AnimalController ()
@property (nonatomic, weak) NSManagedObjectContext* context;
@end

@implementation AnimalController
-(instancetype)initWithContext:(NSManagedObjectContext*)context {
    self = [super init];
    if (self) {
        self.context = context;
    }
    return self;
}

-(NSInteger)count {
    return [[self all] count];
}

-(NSArray*)all {
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Animal"
                                              inManagedObjectContext:self.context];
    [fetchRequest setEntity:entity];
    NSError *error;
    NSArray *fetchedObjects = [self.context executeFetchRequest:fetchRequest error:&error];
    if (fetchedObjects == nil) {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    return fetchedObjects;
}
@end
