//
//  UserEntity+CoreDataProperties.h
//  Bederr
//
//  Created by Raúl Samuel Quispe Mamani on 6/8/16.
//  Copyright © 2016 Bederr S.A.C. All rights reserved.
//

#import "UserEntity.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserEntity (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *cellPhone;
@property (nullable, nonatomic, retain) NSString *document;
@property (nullable, nonatomic, retain) NSString *idFacebook;
@property (nullable, nonatomic, retain) NSString *idUser;
@property (nullable, nonatomic, retain) NSNumber *isVerify;
@property (nullable, nonatomic, retain) NSString *lastName;
@property (nullable, nonatomic, retain) NSString *mail;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *password;
@property (nullable, nonatomic, retain) NSString *tokenFacebook;
@property (nullable, nonatomic, retain) NSData *scoreData;
@property (nullable, nonatomic, retain) NSData *historyData;

@end

NS_ASSUME_NONNULL_END
