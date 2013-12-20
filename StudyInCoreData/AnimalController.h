//
//  AnimalController.h
//  StudyInCoreData
//
//  Created by Cyrus on 12/19/13.
//  Copyright (c) 2013 Daniel Ramteke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnimalController : NSObject
-(instancetype)initWithContext:(NSManagedObjectContext*)context;
-(NSInteger)count;
@end
