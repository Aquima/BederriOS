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
@synthesize optionTitle,proportionalValue;
NSString *const COLOR_STATE_NORMAL_CELL= @"15509d";
//NSString *const COLOR_BACKGROUND= @"FEFEFE";
- (void)awakeFromNib {
    [super awakeFromNib];
    //Initialization code
    optionTitle=[[UILabel alloc] initWithFrame:CGRectMake(64*[proportionalValue floatValue], 0, width-80, height)];
    [optionTitle setTextColor: [UIColor colorFromHexString:COLOR_STATE_NORMAL_CELL withAlpha:1]];
    [optionTitle setLineBreakMode:NSLineBreakByWordWrapping];
    [optionTitle setNumberOfLines:2];
    [self addSubview:optionTitle];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}
-(void)loadWithData:(NSDictionary*)data{
    width=[ [ UIScreen mainScreen ] bounds ].size.width-10*[proportionalValue floatValue];
    height = 52*[proportionalValue floatValue];
    optionTitle.frame = CGRectMake(64*[proportionalValue floatValue], 0, width-80, height);
    [optionTitle setFont:[UIFont fontWithName:@"Helvetica" size:17*[proportionalValue floatValue]]];
    [optionTitle setText:[data objectForKey:@"title"]];
}
-(void)loadTypeIcon:(UIView*)icon{
    currentIcon = icon;
    [self addSubview:currentIcon];
    
}
@end
