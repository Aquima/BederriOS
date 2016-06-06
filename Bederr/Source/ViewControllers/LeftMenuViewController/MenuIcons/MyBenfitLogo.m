//
//  MyBenfitLogo.m
//  Bederr-Master
//
//  Created by Raul Quispe on 8/18/15.
//  Copyright (c) 2015 Franti Saúl Huamán Mera. All rights reserved.
//

#import "MyBenfitLogo.h"

@implementation MyBenfitLogo{
    UIColor* fillColor;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
 //  UIColor* fillColor = [UIColor colorWithRed: 1 green: 0.998 blue: 0.995 alpha: 1];
    //// Group 2
    {
        //// Group 3
        {
            CGContextSaveGState(context);
            CGContextBeginTransparencyLayer(context, NULL);
            
            //// Clip Clip
            UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(0.05, -0.08, 33, 33.05)];
            [clipPath addClip];
            
            
            //// Bezier Drawing
            UIBezierPath* bezierPath = UIBezierPath.bezierPath;
            [bezierPath moveToPoint: CGPointMake(16.53, 30.97)];
            [bezierPath addCurveToPoint: CGPointMake(2.02, 16.47) controlPoint1: CGPointMake(8.53, 30.97) controlPoint2: CGPointMake(2.02, 24.47)];
            [bezierPath addCurveToPoint: CGPointMake(16.53, 1.97) controlPoint1: CGPointMake(2.02, 8.48) controlPoint2: CGPointMake(8.53, 1.97)];
            [bezierPath addCurveToPoint: CGPointMake(31.03, 16.47) controlPoint1: CGPointMake(24.52, 1.97) controlPoint2: CGPointMake(31.03, 8.48)];
            [bezierPath addCurveToPoint: CGPointMake(16.53, 30.97) controlPoint1: CGPointMake(31.03, 24.47) controlPoint2: CGPointMake(24.52, 30.97)];
            [bezierPath closePath];
            [bezierPath moveToPoint: CGPointMake(16.53, -0.05)];
            [bezierPath addCurveToPoint: CGPointMake(-0, 16.47) controlPoint1: CGPointMake(7.41, -0.05) controlPoint2: CGPointMake(-0, 7.36)];
            [bezierPath addCurveToPoint: CGPointMake(16.53, 33) controlPoint1: CGPointMake(-0, 25.59) controlPoint2: CGPointMake(7.41, 33)];
            [bezierPath addCurveToPoint: CGPointMake(33.05, 16.47) controlPoint1: CGPointMake(25.64, 33) controlPoint2: CGPointMake(33.05, 25.59)];
            [bezierPath addCurveToPoint: CGPointMake(16.53, -0.05) controlPoint1: CGPointMake(33.05, 7.36) controlPoint2: CGPointMake(25.64, -0.05)];
            [bezierPath closePath];
            [fillColor setFill];
            [bezierPath fill];
            
            
            CGContextEndTransparencyLayer(context);
            CGContextRestoreGState(context);
        }
        
        
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
        [bezier2Path moveToPoint: CGPointMake(24.73, 15.84)];
        [bezier2Path addLineToPoint: CGPointMake(17.49, 15.84)];
        [bezier2Path addLineToPoint: CGPointMake(17.49, 8.6)];
        [bezier2Path addCurveToPoint: CGPointMake(16.64, 7.76) controlPoint1: CGPointMake(17.49, 8.14) controlPoint2: CGPointMake(17.11, 7.76)];
        [bezier2Path addLineToPoint: CGPointMake(16.53, 7.76)];
        [bezier2Path addCurveToPoint: CGPointMake(15.69, 8.6) controlPoint1: CGPointMake(16.07, 7.76) controlPoint2: CGPointMake(15.69, 8.14)];
        [bezier2Path addLineToPoint: CGPointMake(15.69, 15.84)];
        [bezier2Path addLineToPoint: CGPointMake(8.45, 15.84)];
        [bezier2Path addCurveToPoint: CGPointMake(7.61, 16.68) controlPoint1: CGPointMake(7.99, 15.84) controlPoint2: CGPointMake(7.61, 16.22)];
        [bezier2Path addLineToPoint: CGPointMake(7.61, 16.79)];
        [bezier2Path addCurveToPoint: CGPointMake(8.45, 17.64) controlPoint1: CGPointMake(7.61, 17.26) controlPoint2: CGPointMake(7.99, 17.64)];
        [bezier2Path addLineToPoint: CGPointMake(15.69, 17.64)];
        [bezier2Path addLineToPoint: CGPointMake(15.69, 24.88)];
        [bezier2Path addCurveToPoint: CGPointMake(16.53, 25.72) controlPoint1: CGPointMake(15.69, 25.34) controlPoint2: CGPointMake(16.07, 25.72)];
        [bezier2Path addLineToPoint: CGPointMake(16.64, 25.72)];
        [bezier2Path addCurveToPoint: CGPointMake(17.49, 24.88) controlPoint1: CGPointMake(17.11, 25.72) controlPoint2: CGPointMake(17.49, 25.34)];
        [bezier2Path addLineToPoint: CGPointMake(17.49, 17.64)];
        [bezier2Path addLineToPoint: CGPointMake(24.73, 17.64)];
        [bezier2Path addCurveToPoint: CGPointMake(25.57, 16.79) controlPoint1: CGPointMake(25.19, 17.64) controlPoint2: CGPointMake(25.57, 17.26)];
        [bezier2Path addLineToPoint: CGPointMake(25.57, 16.68)];
        [bezier2Path addCurveToPoint: CGPointMake(24.73, 15.84) controlPoint1: CGPointMake(25.57, 16.22) controlPoint2: CGPointMake(25.19, 15.84)];
        [bezier2Path closePath];
        [fillColor setFill];
        [bezier2Path fill];
    }

}

-(void)changeColor:(UIColor*)color{
    fillColor = color;
}
@end
