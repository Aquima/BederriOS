//
//  UserEntity.h
//  Bederr
//
//  Created by Raúl Samuel Quispe Mamani on 6/8/16.
//  Copyright © 2016 Bederr S.A.C. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserEntity : NSManagedObject

// Insert code here to declare functionality of your managed object subclass
+ (NSArray *)getUserWithMOC:(NSManagedObjectContext*)moc;
@end

NS_ASSUME_NONNULL_END

#import "UserEntity+CoreDataProperties.h"
