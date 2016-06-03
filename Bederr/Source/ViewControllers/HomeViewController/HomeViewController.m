//
//  HomeViewController.m
//  Bederr
//
//  Created by Raúl Samuel Quispe Mamani on 6/3/16.
//  Copyright © 2016 Bederr S.A.C. All rights reserved.
//

#import "HomeViewController.h"
#import "SWRevealViewController.h"

@interface HomeViewController ()
@property (nonatomic) UIDeviceOrientation currentDeviceOrientation;
@end

@implementation HomeViewController{
    UIView*topView;
    SWRevealViewController *revealController;
    
}
@synthesize proportionalValue;
-(void)viewDidLoad{
    [super viewDidLoad];
    
    revealController = [self revealViewController];
    
    [self.view addGestureRecognizer: self.revealViewController.panGestureRecognizer];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self getBody:[proportionalValue floatValue]];
    //orientation Selection
    UIDeviceOrientation currentOrientation = [[UIDevice currentDevice] orientation];
    [self drawOrientation:currentOrientation];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

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
    
    [self drawOrientation:currentOrientation];
   
    // Ignore changes in device orientation if unknown, face up, or face down.
    
}

-(void)drawOrientation:(UIDeviceOrientation)currentOrientation{
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