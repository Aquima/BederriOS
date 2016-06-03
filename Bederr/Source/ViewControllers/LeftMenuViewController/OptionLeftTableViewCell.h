//
//  OptionLeftTableViewCell.h
//  Bederr
//
//  Created by Raúl Samuel Quispe Mamani on 6/3/16.
//  Copyright © 2016 Bederr S.A.C. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OptionLeftTableViewCell : UITableViewCell
@property(nonatomic,strong)UILabel*optionTitle;
-(void)loadWithData:(NSDictionary*)data;
-(void)loadTypeIcon:(NSDictionary*)data withType:(NSString*)type;
@end
