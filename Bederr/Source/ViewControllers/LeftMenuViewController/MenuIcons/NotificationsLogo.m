//
//  NotificationsLogo.m
//  Bederr-Master
//
//  Created by Raul Quispe on 8/18/15.
//  Copyright (c) 2015 Franti Saúl Huamán Mera. All rights reserved.
//

#import "NotificationsLogo.h"

@implementation NotificationsLogo{
    UIColor* fillColor;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
 //// General Declarations
 CGContextRef context = UIGraphicsGetCurrentContext();
 
 //// Color Declarations
// UIColor* fillColor = [UIColor colorWithRed: 1 green: 0.998 blue: 0.995 alpha: 1];
 
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
 [bezierPath addCurveToPoint: CGPointMake(0, 16.47) controlPoint1: CGPointMake(7.41, -0.05) controlPoint2: CGPointMake(0, 7.36)];
 [bezierPath addCurveToPoint: CGPointMake(16.53, 33) controlPoint1: CGPointMake(0, 25.59) controlPoint2: CGPointMake(7.41, 33)];
 [bezierPath addCurveToPoint: CGPointMake(33.05, 16.47) controlPoint1: CGPointMake(25.64, 33) controlPoint2: CGPointMake(33.05, 25.59)];
 [bezierPath addCurveToPoint: CGPointMake(16.53, -0.05) controlPoint1: CGPointMake(33.05, 7.36) controlPoint2: CGPointMake(25.64, -0.05)];
 [bezierPath closePath];
 [fillColor setFill];
 [bezierPath fill];
 
 
 CGContextEndTransparencyLayer(context);
 CGContextRestoreGState(context);
 }
 
 
 //// Oval Drawing
 UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(15.3, 23.8, 2.6, 2.6)];
 [fillColor setFill];
 [ovalPath fill];
 
 
 //// Bezier 2 Drawing
 UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
 [bezier2Path moveToPoint: CGPointMake(16.61, 24.06)];
 [bezier2Path addCurveToPoint: CGPointMake(15.59, 25.08) controlPoint1: CGPointMake(16.05, 24.06) controlPoint2: CGPointMake(15.59, 24.52)];
 [bezier2Path addCurveToPoint: CGPointMake(16.61, 26.11) controlPoint1: CGPointMake(15.59, 25.65) controlPoint2: CGPointMake(16.05, 26.11)];
 [bezier2Path addCurveToPoint: CGPointMake(17.64, 25.08) controlPoint1: CGPointMake(17.18, 26.11) controlPoint2: CGPointMake(17.64, 25.65)];
 [bezier2Path addCurveToPoint: CGPointMake(16.61, 24.06) controlPoint1: CGPointMake(17.64, 24.52) controlPoint2: CGPointMake(17.18, 24.06)];
 [bezier2Path closePath];
 [bezier2Path moveToPoint: CGPointMake(16.61, 26.61)];
 [bezier2Path addCurveToPoint: CGPointMake(15.09, 25.08) controlPoint1: CGPointMake(15.77, 26.61) controlPoint2: CGPointMake(15.09, 25.92)];
 [bezier2Path addCurveToPoint: CGPointMake(16.61, 23.56) controlPoint1: CGPointMake(15.09, 24.24) controlPoint2: CGPointMake(15.77, 23.56)];
 [bezier2Path addCurveToPoint: CGPointMake(18.14, 25.08) controlPoint1: CGPointMake(17.46, 23.56) controlPoint2: CGPointMake(18.14, 24.24)];
 [bezier2Path addCurveToPoint: CGPointMake(16.61, 26.61) controlPoint1: CGPointMake(18.14, 25.92) controlPoint2: CGPointMake(17.46, 26.61)];
 [bezier2Path closePath];
 [fillColor setFill];
 [bezier2Path fill];
 
 
 //// Bezier 3 Drawing
 UIBezierPath* bezier3Path = UIBezierPath.bezierPath;
 [bezier3Path moveToPoint: CGPointMake(16.88, 8.36)];
 [bezier3Path addLineToPoint: CGPointMake(16.27, 8.36)];
 [bezier3Path addCurveToPoint: CGPointMake(11.6, 12.59) controlPoint1: CGPointMake(13.97, 8.5) controlPoint2: CGPointMake(11.99, 10.27)];
 [bezier3Path addLineToPoint: CGPointMake(10.1, 21.53)];
 [bezier3Path addCurveToPoint: CGPointMake(10.11, 21.6) controlPoint1: CGPointMake(10.1, 21.56) controlPoint2: CGPointMake(10.11, 21.58)];
 [bezier3Path addLineToPoint: CGPointMake(10.14, 21.66)];
 [bezier3Path addLineToPoint: CGPointMake(10.23, 21.69)];
 [bezier3Path addLineToPoint: CGPointMake(22.91, 21.7)];
 [bezier3Path addCurveToPoint: CGPointMake(23.03, 21.69) controlPoint1: CGPointMake(23, 21.7) controlPoint2: CGPointMake(23.03, 21.69)];
 [bezier3Path addLineToPoint: CGPointMake(23.06, 21.64)];
 [bezier3Path addCurveToPoint: CGPointMake(23.09, 21.53) controlPoint1: CGPointMake(23.07, 21.63) controlPoint2: CGPointMake(23.09, 21.6)];
 [bezier3Path addLineToPoint: CGPointMake(21.59, 12.59)];
 [bezier3Path addCurveToPoint: CGPointMake(16.88, 8.36) controlPoint1: CGPointMake(21.2, 10.24) controlPoint2: CGPointMake(19.26, 8.5)];
 [bezier3Path closePath];
 [bezier3Path moveToPoint: CGPointMake(22.91, 23.2)];
 [bezier3Path addLineToPoint: CGPointMake(10.27, 23.2)];
 [bezier3Path addCurveToPoint: CGPointMake(9.66, 23.08) controlPoint1: CGPointMake(10.06, 23.2) controlPoint2: CGPointMake(9.86, 23.16)];
 [bezier3Path addCurveToPoint: CGPointMake(9.08, 22.72) controlPoint1: CGPointMake(9.44, 23.01) controlPoint2: CGPointMake(9.24, 22.88)];
 [bezier3Path addCurveToPoint: CGPointMake(8.77, 22.27) controlPoint1: CGPointMake(8.95, 22.59) controlPoint2: CGPointMake(8.85, 22.44)];
 [bezier3Path addCurveToPoint: CGPointMake(8.6, 21.53) controlPoint1: CGPointMake(8.66, 22.04) controlPoint2: CGPointMake(8.6, 21.79)];
 [bezier3Path addCurveToPoint: CGPointMake(8.62, 21.28) controlPoint1: CGPointMake(8.6, 21.45) controlPoint2: CGPointMake(8.61, 21.36)];
 [bezier3Path addLineToPoint: CGPointMake(10.12, 12.34)];
 [bezier3Path addCurveToPoint: CGPointMake(16.22, 6.87) controlPoint1: CGPointMake(10.62, 9.34) controlPoint2: CGPointMake(13.19, 7.04)];
 [bezier3Path addLineToPoint: CGPointMake(16.92, 6.86)];
 [bezier3Path addCurveToPoint: CGPointMake(23.07, 12.34) controlPoint1: CGPointMake(20.05, 7.04) controlPoint2: CGPointMake(22.56, 9.29)];
 [bezier3Path addLineToPoint: CGPointMake(24.57, 21.28)];
 [bezier3Path addCurveToPoint: CGPointMake(24.59, 21.53) controlPoint1: CGPointMake(24.58, 21.36) controlPoint2: CGPointMake(24.59, 21.45)];
 [bezier3Path addCurveToPoint: CGPointMake(24.32, 22.45) controlPoint1: CGPointMake(24.59, 21.87) controlPoint2: CGPointMake(24.5, 22.18)];
 [bezier3Path addCurveToPoint: CGPointMake(22.91, 23.2) controlPoint1: CGPointMake(24.04, 22.93) controlPoint2: CGPointMake(23.53, 23.2)];
 [bezier3Path closePath];
 [fillColor setFill];
 [bezier3Path fill];
 }

}
-(void)changeColor:(UIColor*)color{
    fillColor = color;
}

@end
