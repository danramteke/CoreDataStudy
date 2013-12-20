//
//  AnimalController.m
//  StudyInCoreData
//
//  Created by Cyrus on 12/19/13.
//  Copyright (c) 2013 Daniel Ramteke. All rights reserved.
//

#import "AnimalController.h"

@implementation AnimalController
-(instancetype)initWithContext:(NSManagedObjectContext*)context {
    self = [super init];
    if (self) {
        self.context = context;
    }
    return self;
}
@end
