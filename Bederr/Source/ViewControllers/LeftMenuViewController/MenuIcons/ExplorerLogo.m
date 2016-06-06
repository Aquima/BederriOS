//
//  ExplorerLogo.m
//  Bederr-Master
//
//  Created by Raul Quispe on 8/18/15.
//  Copyright (c) 2015 Franti Saúl Huamán Mera. All rights reserved.
//

#import "ExplorerLogo.h"

@implementation ExplorerLogo{
    UIColor* fillColor;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
   // UIColor* fillColor = [UIColor colorWithRed: 1 green: 0.998 blue: 0.995 alpha: 1];
  
    //// Color Declarations
 // fillColor = [UIColor colorFromHexString:@"FFFFFF" withAlpha:1];
    
    //// Group 3
    {
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        //// Clip Clip
        UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(0.05, -0.08, 33, 33.05)];
        [clipPath addClip];
        
        
        //// Bezier Drawing
        UIBezierPath* bezierPath = UIBezierPath.bezierPath;
        [bezierPath moveToPoint: CGPointMake(20.97, 20.54)];
        [bezierPath addCurveToPoint: CGPointMake(17.5, 18.59) controlPoint1: CGPointMake(19.55, 20.54) controlPoint2: CGPointMake(18.25, 19.81)];
        [bezierPath addCurveToPoint: CGPointMake(16.86, 18.23) controlPoint1: CGPointMake(17.36, 18.37) controlPoint2: CGPointMake(17.12, 18.23)];
        [bezierPath addCurveToPoint: CGPointMake(16.22, 18.59) controlPoint1: CGPointMake(16.6, 18.23) controlPoint2: CGPointMake(16.35, 18.37)];
        [bezierPath addCurveToPoint: CGPointMake(12.75, 20.54) controlPoint1: CGPointMake(15.47, 19.81) controlPoint2: CGPointMake(14.17, 20.54)];
        [bezierPath addCurveToPoint: CGPointMake(8.68, 16.47) controlPoint1: CGPointMake(10.5, 20.54) controlPoint2: CGPointMake(8.68, 18.72)];
        [bezierPath addCurveToPoint: CGPointMake(12.75, 12.41) controlPoint1: CGPointMake(8.68, 14.23) controlPoint2: CGPointMake(10.5, 12.41)];
        [bezierPath addCurveToPoint: CGPointMake(16.22, 14.36) controlPoint1: CGPointMake(14.17, 12.41) controlPoint2: CGPointMake(15.47, 13.14)];
        [bezierPath addCurveToPoint: CGPointMake(16.86, 14.72) controlPoint1: CGPointMake(16.35, 14.58) controlPoint2: CGPointMake(16.6, 14.72)];
        [bezierPath addCurveToPoint: CGPointMake(17.5, 14.36) controlPoint1: CGPointMake(17.12, 14.72) controlPoint2: CGPointMake(17.36, 14.58)];
        [bezierPath addCurveToPoint: CGPointMake(20.97, 12.41) controlPoint1: CGPointMake(18.25, 13.14) controlPoint2: CGPointMake(19.55, 12.41)];
        [bezierPath addCurveToPoint: CGPointMake(25.04, 16.47) controlPoint1: CGPointMake(23.21, 12.41) controlPoint2: CGPointMake(25.04, 14.23)];
        [bezierPath addCurveToPoint: CGPointMake(20.97, 20.54) controlPoint1: CGPointMake(25.04, 18.72) controlPoint2: CGPointMake(23.21, 20.54)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(20.97, 10.9)];
        [bezierPath addCurveToPoint: CGPointMake(16.86, 12.72) controlPoint1: CGPointMake(19.38, 10.9) controlPoint2: CGPointMake(17.9, 11.56)];
        [bezierPath addCurveToPoint: CGPointMake(12.75, 10.9) controlPoint1: CGPointMake(15.81, 11.56) controlPoint2: CGPointMake(14.34, 10.9)];
        [bezierPath addCurveToPoint: CGPointMake(7.17, 16.47) controlPoint1: CGPointMake(9.67, 10.9) controlPoint2: CGPointMake(7.17, 13.4)];
        [bezierPath addCurveToPoint: CGPointMake(12.75, 22.05) controlPoint1: CGPointMake(7.17, 19.55) controlPoint2: CGPointMake(9.67, 22.05)];
        [bezierPath addCurveToPoint: CGPointMake(16.86, 20.23) controlPoint1: CGPointMake(14.34, 22.05) controlPoint2: CGPointMake(15.81, 21.39)];
        [bezierPath addCurveToPoint: CGPointMake(20.97, 22.05) controlPoint1: CGPointMake(17.9, 21.39) controlPoint2: CGPointMake(19.38, 22.05)];
        [bezierPath addCurveToPoint: CGPointMake(26.55, 16.47) controlPoint1: CGPointMake(24.05, 22.05) controlPoint2: CGPointMake(26.55, 19.55)];
        [bezierPath addCurveToPoint: CGPointMake(20.97, 10.9) controlPoint1: CGPointMake(26.55, 13.4) controlPoint2: CGPointMake(24.05, 10.9)];
        [bezierPath closePath];
        [fillColor setFill];
        [bezierPath fill];
        
        
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
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
