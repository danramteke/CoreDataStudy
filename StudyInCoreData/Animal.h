//
//  Animal.h
//  StudyInCoreData
//
//  Created by Daniel R on 12/20/13.
//  Copyright (c) 2013 Daniel Ramteke. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface Animal : NSManagedObject
@property (nonatomic, strong) NSString* commonName;
@property (nonatomic, strong) NSString* latinName;
@property (nonatomic) NSInteger numberOfLikes;
@end
