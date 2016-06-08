//
//  UserEntity.m
//  Bederr
//
//  Created by Raúl Samuel Quispe Mamani on 6/8/16.
//  Copyright © 2016 Bederr S.A.C. All rights reserved.
//

#import "UserEntity.h"

@implementation UserEntity

// Insert code here to add functionality to your managed object subclass
+ (NSArray *)getUserWithMOC:(NSManagedObjectContext*)moc{
    
    NSFetchRequest *fetch = [NSFetchRequest fetchRequestWithEntityName:@"UserEntity"];
    fetch.sortDescriptors = @[[[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES]];
    
    NSError *error = nil;
    return [moc executeFetchRequest:fetch error:&error];
    
}
@end
