//
//  AskLogo.m
//  Bederr-Master
//
//  Created by Raul Quispe on 8/18/15.
//  Copyright (c) 2015 Franti Saúl Huamán Mera. All rights reserved.
//

#import "AskLogo.h"

@implementation AskLogo{
    UIColor* fillColor;
    UIBezierPath* bezierPath;
    UIBezierPath* bezier2Path;
    CGContextRef context;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //// General Declarations
    context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    //fillColor = [UIColor colorWithRed: 1 green: 0.998 blue: 0.995 alpha: 1];
    
    //// Group 3
    {
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        //// Clip Clip
        UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(0.05, -0.08, 33, 33.05)];
        [clipPath addClip];
        
        
        //// Bezier Drawing
        bezierPath = UIBezierPath.bezierPath;
        [bezierPath moveToPoint: CGPointMake(23.01, 18.04)];
        [bezierPath addCurveToPoint: CGPointMake(21.56, 19.94) controlPoint1: CGPointMake(23.01, 19.3) controlPoint2: CGPointMake(22.52, 19.94)];
        [bezierPath addLineToPoint: CGPointMake(21.2, 19.94)];
        [bezierPath addCurveToPoint: CGPointMake(20.49, 20.34) controlPoint1: CGPointMake(20.91, 19.94) controlPoint2: CGPointMake(20.64, 20.09)];
        [bezierPath addCurveToPoint: CGPointMake(20.63, 22.46) controlPoint1: CGPointMake(20.27, 20.71) controlPoint2: CGPointMake(20.43, 21.74)];
        [bezierPath addCurveToPoint: CGPointMake(19.27, 20.92) controlPoint1: CGPointMake(20.1, 22.15) controlPoint2: CGPointMake(19.6, 21.41)];
        [bezierPath addCurveToPoint: CGPointMake(18.06, 19.94) controlPoint1: CGPointMake(18.88, 20.35) controlPoint2: CGPointMake(18.6, 19.94)];
        [bezierPath addLineToPoint: CGPointMake(12.1, 19.94)];
        [bezierPath addCurveToPoint: CGPointMake(10.05, 18.04) controlPoint1: CGPointMake(10.95, 19.94) controlPoint2: CGPointMake(10.05, 19.1)];
        [bezierPath addLineToPoint: CGPointMake(10.05, 14.26)];
        [bezierPath addCurveToPoint: CGPointMake(12.27, 11.69) controlPoint1: CGPointMake(10.05, 13.06) controlPoint2: CGPointMake(11.23, 11.69)];
        [bezierPath addLineToPoint: CGPointMake(21.56, 11.69)];
        [bezierPath addCurveToPoint: CGPointMake(23.01, 14.26) controlPoint1: CGPointMake(22.61, 11.69) controlPoint2: CGPointMake(23.01, 13.27)];
        [bezierPath addLineToPoint: CGPointMake(23.01, 18.04)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(21.56, 10.04)];
        [bezierPath addLineToPoint: CGPointMake(12.27, 10.04)];
        [bezierPath addCurveToPoint: CGPointMake(8.4, 14.26) controlPoint1: CGPointMake(10.12, 10.04) controlPoint2: CGPointMake(8.4, 12.35)];
        [bezierPath addLineToPoint: CGPointMake(8.4, 18.04)];
        [bezierPath addCurveToPoint: CGPointMake(12.1, 21.59) controlPoint1: CGPointMake(8.4, 20.03) controlPoint2: CGPointMake(10.03, 21.59)];
        [bezierPath addLineToPoint: CGPointMake(17.72, 21.59)];
        [bezierPath addCurveToPoint: CGPointMake(17.9, 21.84) controlPoint1: CGPointMake(17.78, 21.67) controlPoint2: CGPointMake(17.84, 21.76)];
        [bezierPath addCurveToPoint: CGPointMake(21.1, 24.25) controlPoint1: CGPointMake(18.51, 22.75) controlPoint2: CGPointMake(19.52, 24.25)];
        [bezierPath addLineToPoint: CGPointMake(21.1, 24.25)];
        [bezierPath addLineToPoint: CGPointMake(21.27, 24.26)];
        [bezierPath addCurveToPoint: CGPointMake(22.16, 24.19) controlPoint1: CGPointMake(21.78, 24.26) controlPoint2: CGPointMake(22.12, 24.2)];
        [bezierPath addCurveToPoint: CGPointMake(22.8, 23.66) controlPoint1: CGPointMake(22.46, 24.14) controlPoint2: CGPointMake(22.7, 23.94)];
        [bezierPath addCurveToPoint: CGPointMake(22.64, 22.84) controlPoint1: CGPointMake(22.9, 23.38) controlPoint2: CGPointMake(22.84, 23.06)];
        [bezierPath addCurveToPoint: CGPointMake(22.32, 22.33) controlPoint1: CGPointMake(22.53, 22.71) controlPoint2: CGPointMake(22.39, 22.45)];
        [bezierPath addCurveToPoint: CGPointMake(22.11, 21.55) controlPoint1: CGPointMake(22.23, 22.16) controlPoint2: CGPointMake(22.16, 21.85)];
        [bezierPath addCurveToPoint: CGPointMake(24.66, 18.04) controlPoint1: CGPointMake(23.69, 21.31) controlPoint2: CGPointMake(24.66, 20.01)];
        [bezierPath addLineToPoint: CGPointMake(24.66, 14.26)];
        [bezierPath addCurveToPoint: CGPointMake(21.56, 10.04) controlPoint1: CGPointMake(24.66, 12.16) controlPoint2: CGPointMake(23.59, 10.04)];
        [bezierPath closePath];
        [fillColor setFill];
        [bezierPath fill];
        
        
        //// Bezier 2 Drawing
        bezier2Path = UIBezierPath.bezierPath;
        [bezier2Path moveToPoint: CGPointMake(16.53, 30.97)];
        [bezier2Path addCurveToPoint: CGPointMake(2.02, 16.47) controlPoint1: CGPointMake(8.53, 30.97) controlPoint2: CGPointMake(2.02, 24.47)];
        [bezier2Path addCurveToPoint: CGPointMake(16.53, 1.97) controlPoint1: CGPointMake(2.02, 8.48) controlPoint2: CGPointMake(8.53, 1.97)];
        [bezier2Path addCurveToPoint: CGPointMake(31.03, 16.47) controlPoint1: CGPointMake(24.52, 1.97) controlPoint2: CGPointMake(31.03, 8.48)];
        [bezier2Path addCurveToPoint: CGPointMake(16.53, 30.97) controlPoint1: CGPointMake(31.03, 24.47) controlPoint2: CGPointMake(24.52, 30.97)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(16.53, -0.05)];
        [bezier2Path addCurveToPoint: CGPointMake(0, 16.47) controlPoint1: CGPointMake(7.41, -0.05) controlPoint2: CGPointMake(0, 7.36)];
        [bezier2Path addCurveToPoint: CGPointMake(16.53, 33) controlPoint1: CGPointMake(0, 25.59) controlPoint2: CGPointMake(7.41, 33)];
        [bezier2Path addCurveToPoint: CGPointMake(33.05, 16.47) controlPoint1: CGPointMake(25.64, 33) controlPoint2: CGPointMake(33.05, 25.59)];
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
