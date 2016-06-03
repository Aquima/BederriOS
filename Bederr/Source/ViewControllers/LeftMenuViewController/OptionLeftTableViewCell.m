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
}
@synthesize optionTitle;

- (void)awakeFromNib {
    [super awakeFromNib];
    //Initialization code
    width=[ [ UIScreen mainScreen ] bounds ].size.width-10;
    height = 40;
    
    optionTitle=[[UILabel alloc] initWithFrame:CGRectMake(50, 0, width-60, height)];
    [optionTitle setFont:[UIFont fontWithName:@"Helvetica-Light" size:15]];
    [optionTitle setTextColor: [UIColor colorFromHexString:@"f4f4f4" withAlpha:1]];
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
-(void)loadTypeIcon:(NSDictionary*)data withType:(NSString*)type{
     [imgIcono setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@%@",[data objectForKey:@"icono"],type]]];
}
@end
