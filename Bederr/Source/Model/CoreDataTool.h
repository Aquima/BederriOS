//
//  CoreDataTool.h
//  Bederr
//
//  Created by Raúl Samuel Quispe Mamani on 6/8/16.
//  Copyright © 2016 Bederr S.A.C. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
@interface CoreDataTool : NSObject
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

+(CoreDataTool *)sharedInstance;

@end