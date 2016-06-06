//
//  MenuLogo.m
//  Bederr
//
//  Created by Fernando Ponce on 5/12/15.
//  Copyright © 2015 Dipoo. All rights reserved.
//

#import "MenuLogo.h"

@implementation MenuLogo


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor* fillColor = [UIColor colorWithRed: 0.915 green: 0.914 blue: 0.89 alpha: 1];
    
    //// Group 3
    {
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        //// Clip Clip
        UIBezierPath* clipPath = [UIBezierPath bezierPathWithRect: CGRectMake(210.07, 75.35, 13.75, 10.6)];
        [clipPath addClip];
        
        
        //// Bezier Drawing
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(210.69, 79.99)];
        [bezierPath addLineToPoint: CGPointMake(223.12, 79.99)];
        [bezierPath addCurveToPoint: CGPointMake(223.81, 80.68) controlPoint1: CGPointMake(223.5, 79.99) controlPoint2: CGPointMake(223.81, 80.3)];
        [bezierPath addCurveToPoint: CGPointMake(223.12, 81.37) controlPoint1: CGPointMake(223.81, 81.06) controlPoint2: CGPointMake(223.5, 81.37)];
        [bezierPath addLineToPoint: CGPointMake(210.69, 81.37)];
        [bezierPath addCurveToPoint: CGPointMake(210, 80.68) controlPoint1: CGPointMake(210.31, 81.37) controlPoint2: CGPointMake(210, 81.06)];
        [bezierPath addCurveToPoint: CGPointMake(210.69, 79.99) controlPoint1: CGPointMake(210, 80.3) controlPoint2: CGPointMake(210.31, 79.99)];
        [bezierPath closePath];
        bezierPath.usesEvenOddFillRule = YES;
        
        [fillColor setFill];
        [bezierPath fill];
        
        
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
        [bezier2Path moveToPoint: CGPointMake(210.69, 84.62)];
        [bezier2Path addLineToPoint: CGPointMake(223.12, 84.62)];
        [bezier2Path addCurveToPoint: CGPointMake(223.81, 85.31) controlPoint1: CGPointMake(223.5, 84.62) controlPoint2: CGPointMake(223.81, 84.93)];
        [bezier2Path addCurveToPoint: CGPointMake(223.12, 86) controlPoint1: CGPointMake(223.81, 85.69) controlPoint2: CGPointMake(223.5, 86)];
        [bezier2Path addLineToPoint: CGPointMake(210.69, 86)];
        [bezier2Path addCurveToPoint: CGPointMake(210, 85.31) controlPoint1: CGPointMake(210.31, 86) controlPoint2: CGPointMake(210, 85.69)];
        [bezier2Path addCurveToPoint: CGPointMake(210.69, 84.62) controlPoint1: CGPointMake(210, 84.93) controlPoint2: CGPointMake(210.31, 84.62)];
        [bezier2Path closePath];
        bezier2Path.usesEvenOddFillRule = YES;
        
        [fillColor setFill];
        [bezier2Path fill];
        
        
        //// Bezier 3 Drawing
        UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
        [bezier3Path moveToPoint: CGPointMake(210.69, 75.36)];
        [bezier3Path addLineToPoint: CGPointMake(223.12, 75.36)];
        [bezier3Path addCurveToPoint: CGPointMake(223.81, 76.05) controlPoint1: CGPointMake(223.5, 75.36) controlPoint2: CGPointMake(223.81, 75.67)];
        [bezier3Path addCurveToPoint: CGPointMake(223.12, 76.74) controlPoint1: CGPointMake(223.81, 76.43) controlPoint2: CGPointMake(223.5, 76.74)];
        [bezier3Path addLineToPoint: CGPointMake(210.69, 76.74)];
        [bezier3Path addCurveToPoint: CGPointMake(210, 76.05) controlPoint1: CGPointMake(210.31, 76.74) controlPoint2: CGPointMake(210, 76.43)];
        [bezier3Path addCurveToPoint: CGPointMake(210.69, 75.36) controlPoint1: CGPointMake(210, 75.67) controlPoint2: CGPointMake(210.31, 75.36)];
        [bezier3Path closePath];
        bezier3Path.usesEvenOddFillRule = YES;
        
        [fillColor setFill];
        [bezier3Path fill];
        
        
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);
    }
}


@end
