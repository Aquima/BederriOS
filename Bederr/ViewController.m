//
//  ViewController.m
//  Bederr
//
//  Created by Raúl Samuel Quispe Mamani on 6/3/16.
//  Copyright © 2016 Bederr S.A.C. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) UIDeviceOrientation currentDeviceOrientation;
@end

@implementation ViewController{
    UIView*topView;
}
@synthesize proportionalValue;
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self getBody:[proportionalValue floatValue]];
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(deviceDidRotate:) name:UIDeviceOrientationDidChangeNotification object:nil];
    
    // Initial device orientation
    self.currentDeviceOrientation = [[UIDevice currentDevice] orientation];
    // Do what you want here
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIDeviceOrientationDidChangeNotification object:nil];
    if ([[UIDevice currentDevice] isGeneratingDeviceOrientationNotifications]) {
        [[UIDevice currentDevice] endGeneratingDeviceOrientationNotifications];
    }
}

- (void)deviceDidRotate:(NSNotification *)notification
{
    self.currentDeviceOrientation = [[UIDevice currentDevice] orientation];
    // Do what you want here
    UIDeviceOrientation currentOrientation = [[UIDevice currentDevice] orientation];
    if (!UIDeviceOrientationIsValidInterfaceOrientation(currentOrientation)) {
        return;
    }
    
    
    BOOL isLandscape = UIDeviceOrientationIsLandscape(currentOrientation);
    BOOL isPortrait = UIDeviceOrientationIsPortrait(currentOrientation);

    // Rotate your view, or other things here
    if (isLandscape) {
        NSLog(@"isLandscape");
        [self drawLandscape:[proportionalValue floatValue]];
    }
    if (isPortrait) {
        NSLog(@"isPortrait");
        [self drawPortrait:[proportionalValue floatValue]];
    }
    // Ignore changes in device orientation if unknown, face up, or face down.
  
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - DrawBody
-(void)getBody:(float)propotionalValue{
    
    topView = [[UIView alloc] init];
    [topView setBackgroundColor:[UIColor darkGrayColor]];
    //Add subviews order
    [self.view addSubview:topView];
    
}
-(void)drawPortrait:(float)propotionalValue{
    topView.frame = CGRectMake(0, 0, self.view.frame.size.width, 64*propotionalValue);
}
-(void)drawLandscape:(float)propotionalValue{
    topView.frame = CGRectMake(0, 0, self.view.frame.size.width, 64*propotionalValue);
}
#pragma mark - UIViewController
- (BOOL)prefersStatusBarHidden {
    return false;
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}
@end
