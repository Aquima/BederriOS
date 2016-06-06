//
//  ProfileLogo.m
//  Bederr-Master
//
//  Created by Raul Quispe on 8/18/15.
//  Copyright (c) 2015 Franti Saúl Huamán Mera. All rights reserved.
//

#import "ProfileLogo.h"

@implementation ProfileLogo{
    UIColor*fillColor;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    //UIColor* fillColor = [UIColor colorWithRed: 1 green: 0.998 blue: 0.995 alpha: 1];
    
    //// Group 3
    {
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        //// Clip Clip
        UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(0.05, -0.08, 33, 33.05)];
        [clipPath addClip];
        
        
        //// Bezier Drawing
        UIBezierPath* bezierPath = UIBezierPath.bezierPath;
        [bezierPath moveToPoint: CGPointMake(19.71, 17.17)];
        [bezierPath addCurveToPoint: CGPointMake(16.55, 18.49) controlPoint1: CGPointMake(18.87, 18.02) controlPoint2: CGPointMake(17.75, 18.49)];
        [bezierPath addLineToPoint: CGPointMake(16.5, 18.49)];
        [bezierPath addCurveToPoint: CGPointMake(13.34, 17.17) controlPoint1: CGPointMake(15.31, 18.49) controlPoint2: CGPointMake(14.19, 18.02)];
        [bezierPath addCurveToPoint: CGPointMake(12.01, 13.85) controlPoint1: CGPointMake(12.47, 16.29) controlPoint2: CGPointMake(12, 15.12)];
        [bezierPath addCurveToPoint: CGPointMake(13.34, 10.57) controlPoint1: CGPointMake(12, 12.61) controlPoint2: CGPointMake(12.47, 11.45)];
        [bezierPath addCurveToPoint: CGPointMake(16.52, 9.23) controlPoint1: CGPointMake(14.19, 9.71) controlPoint2: CGPointMake(15.32, 9.23)];
        [bezierPath addCurveToPoint: CGPointMake(19.71, 10.57) controlPoint1: CGPointMake(17.73, 9.23) controlPoint2: CGPointMake(18.86, 9.71)];
        [bezierPath addCurveToPoint: CGPointMake(21.05, 13.86) controlPoint1: CGPointMake(20.58, 11.45) controlPoint2: CGPointMake(21.05, 12.61)];
        [bezierPath addCurveToPoint: CGPointMake(19.71, 17.17) controlPoint1: CGPointMake(21.05, 15.12) controlPoint2: CGPointMake(20.58, 16.29)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(16.52, 7.76)];
        [bezierPath addCurveToPoint: CGPointMake(12.29, 9.54) controlPoint1: CGPointMake(14.93, 7.77) controlPoint2: CGPointMake(13.42, 8.4)];
        [bezierPath addCurveToPoint: CGPointMake(10.54, 13.85) controlPoint1: CGPointMake(11.15, 10.7) controlPoint2: CGPointMake(10.53, 12.23)];
        [bezierPath addCurveToPoint: CGPointMake(12.3, 18.2) controlPoint1: CGPointMake(10.53, 15.5) controlPoint2: CGPointMake(11.16, 17.05)];
        [bezierPath addCurveToPoint: CGPointMake(16.52, 19.95) controlPoint1: CGPointMake(13.43, 19.33) controlPoint2: CGPointMake(14.92, 19.95)];
        [bezierPath addLineToPoint: CGPointMake(16.55, 19.95)];
        [bezierPath addCurveToPoint: CGPointMake(20.75, 18.2) controlPoint1: CGPointMake(18.14, 19.95) controlPoint2: CGPointMake(19.63, 19.33)];
        [bezierPath addCurveToPoint: CGPointMake(22.51, 13.86) controlPoint1: CGPointMake(21.9, 17.05) controlPoint2: CGPointMake(22.52, 15.5)];
        [bezierPath addCurveToPoint: CGPointMake(20.76, 9.54) controlPoint1: CGPointMake(22.52, 12.23) controlPoint2: CGPointMake(21.9, 10.7)];
        [bezierPath addCurveToPoint: CGPointMake(16.52, 7.76) controlPoint1: CGPointMake(19.63, 8.4) controlPoint2: CGPointMake(18.13, 7.77)];
        [bezierPath closePath];
        [fillColor setFill];
        [bezierPath fill];
        
        
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
        [bezier2Path moveToPoint: CGPointMake(27.54, 25.89)];
        [bezier2Path addCurveToPoint: CGPointMake(22.09, 21.99) controlPoint1: CGPointMake(26.14, 23.68) controlPoint2: CGPointMake(24.21, 22)];
        [bezier2Path addLineToPoint: CGPointMake(10.96, 21.99)];
        [bezier2Path addCurveToPoint: CGPointMake(5.51, 25.89) controlPoint1: CGPointMake(8.85, 22) controlPoint2: CGPointMake(6.91, 23.68)];
        [bezier2Path addCurveToPoint: CGPointMake(2.02, 16.47) controlPoint1: CGPointMake(3.34, 23.35) controlPoint2: CGPointMake(2.02, 20.06)];
        [bezier2Path addCurveToPoint: CGPointMake(16.53, 1.97) controlPoint1: CGPointMake(2.02, 8.48) controlPoint2: CGPointMake(8.53, 1.97)];
        [bezier2Path addCurveToPoint: CGPointMake(31.03, 16.47) controlPoint1: CGPointMake(24.52, 1.97) controlPoint2: CGPointMake(31.03, 8.48)];
        [bezier2Path addCurveToPoint: CGPointMake(27.54, 25.89) controlPoint1: CGPointMake(31.03, 20.06) controlPoint2: CGPointMake(29.71, 23.35)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(16.53, 30.97)];
        [bezier2Path addCurveToPoint: CGPointMake(6.55, 26.98) controlPoint1: CGPointMake(12.67, 30.97) controlPoint2: CGPointMake(9.15, 29.45)];
        [bezier2Path addCurveToPoint: CGPointMake(6.72, 26.7) controlPoint1: CGPointMake(6.61, 26.89) controlPoint2: CGPointMake(6.66, 26.79)];
        [bezier2Path addCurveToPoint: CGPointMake(10.96, 23.45) controlPoint1: CGPointMake(8.02, 24.64) controlPoint2: CGPointMake(9.56, 23.46)];
        [bezier2Path addLineToPoint: CGPointMake(22.09, 23.45)];
        [bezier2Path addCurveToPoint: CGPointMake(26.33, 26.7) controlPoint1: CGPointMake(23.49, 23.46) controlPoint2: CGPointMake(25.04, 24.64)];
        [bezier2Path addCurveToPoint: CGPointMake(26.5, 26.98) controlPoint1: CGPointMake(26.39, 26.79) controlPoint2: CGPointMake(26.44, 26.89)];
        [bezier2Path addCurveToPoint: CGPointMake(16.53, 30.97) controlPoint1: CGPointMake(23.9, 29.45) controlPoint2: CGPointMake(20.39, 30.97)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(16.53, -0.05)];
        [bezier2Path addCurveToPoint: CGPointMake(0, 16.47) controlPoint1: CGPointMake(7.41, -0.05) controlPoint2: CGPointMake(0, 7.36)];
        [bezier2Path addCurveToPoint: CGPointMake(4.49, 27.78) controlPoint1: CGPointMake(0, 20.85) controlPoint2: CGPointMake(1.71, 24.82)];
        [bezier2Path addCurveToPoint: CGPointMake(5.62, 28.87) controlPoint1: CGPointMake(4.85, 28.16) controlPoint2: CGPointMake(5.22, 28.52)];
        [bezier2Path addCurveToPoint: CGPointMake(16.53, 33) controlPoint1: CGPointMake(8.53, 31.44) controlPoint2: CGPointMake(12.35, 33)];
        [bezier2Path addCurveToPoint: CGPointMake(27.44, 28.87) controlPoint1: CGPointMake(20.71, 33) controlPoint2: CGPointMake(24.52, 31.44)];
        [bezier2Path addCurveToPoint: CGPointMake(28.56, 27.78) controlPoint1: CGPointMake(27.83, 28.53) controlPoint2: CGPointMake(28.21, 28.16)];
        [bezier2Path addCurveToPoint: CGPointMake(33.05, 16.47) controlPoint1: CGPointMake(31.34, 24.82) controlPoint2: CGPointMake(33.05, 20.85)];
        [bezier2Path addCurveToPoint: CGPointMake(16.53, -0.05) controlPoint1: CGPointMake(33.05, 7.36) controlPoint2: CGPointMake(25.64, -0.05)];
        [bezier2Path closePath];
        [fillColor setFill];
        [bezier2Path fill];
        
        
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);
    }

}

-(void)changeColor:(UIColor*)color{
    fillColor = color;
}
@end
