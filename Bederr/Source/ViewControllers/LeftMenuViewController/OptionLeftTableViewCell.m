//
//  OptionLeftTableViewCell.m
//  Bederr
//
//  Created by Raúl Samuel Quispe Mamani on 6/3/16.
//  Copyright © 2016 Bederr S.A.C. All rights reserved.
//

#import "OptionLeftTableViewCell.h"
#import "UIColor+Hex.h"

@implementation OptionLeftTableViewCell{
    float width;
    float height;
    UIImageView*imgIcono;
    UIView*currentIcon;
}
@synthesize optionTitle;
NSString *const COLOR_STATE_NORMAL_CELL= @"0374B6";
//NSString *const COLOR_BACKGROUND= @"FEFEFE";
- (void)awakeFromNib {
    [super awakeFromNib];
    //Initialization code
    width=[ [ UIScreen mainScreen ] bounds ].size.width-10;
    height = 52;
    
    optionTitle=[[UILabel alloc] initWithFrame:CGRectMake(64, 0, width-80, height)];
    [optionTitle setFont:[UIFont fontWithName:@"Helvetica-Light" size:15]];
    [optionTitle setTextColor: [UIColor colorFromHexString:COLOR_STATE_NORMAL_CELL withAlpha:1]];
    [optionTitle setLineBreakMode:NSLineBreakByWordWrapping];
    [optionTitle setNumberOfLines:2];
    [self addSubview:optionTitle];
    
    imgIcono = [[UIImageView alloc] initWithFrame:CGRectMake(5, 0, 40, 40)];
    [self addSubview:imgIcono];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}
-(void)loadWithData:(NSDictionary*)data{
    [optionTitle setText:[data objectForKey:@"title"]];
   
}
-(void)loadTypeIcon:(UIView*)icon{
    //[imgIcono setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@%@",[data objectForKey:@"icono"],type]]];
    currentIcon = icon;
    [self addSubview:currentIcon];
}
@end
