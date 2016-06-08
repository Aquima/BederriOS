//
//  AppDelegate.m
//  Bederr
//
//  Created by Raúl Samuel Quispe Mamani on 6/3/16.
//  Copyright © 2016 Bederr S.A.C. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "HomeViewController.h"
#import "IntroViewController.h"
#import "LeftMenuViewController.h"
#import "SWRevealViewController.h"

#import "CoreDataTool.h"
#import "UserEntity.h"

@interface AppDelegate ()<SWRevealViewControllerDelegate>

@end

@implementation AppDelegate{
    SWRevealViewController *revealController;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //Menu Left
    LeftMenuViewController*leftMenuVC = [[LeftMenuViewController alloc] init];
    [leftMenuVC setProportionalValue:[self getModel]];
    UINavigationController*nav;
    NSArray*getUser = [UserEntity getUserWithMOC:[[CoreDataTool sharedInstance] managedObjectContext]];
    if (getUser.count==0){
        
        IntroViewController*introVC = [[IntroViewController alloc] init];
        [introVC setProportionalValue:[self getModel]];
        nav = [[UINavigationController alloc] initWithRootViewController:introVC];
        nav.navigationBarHidden = true;
        
    }else{
        
        HomeViewController*homeVC = [[HomeViewController alloc] init];
        [homeVC setProportionalValue:[self getModel]];
        nav = [[UINavigationController alloc] initWithRootViewController:homeVC];
        nav.navigationBarHidden = true;
        
    }
   
   
    revealController  = [[SWRevealViewController alloc] initWithRearViewController:leftMenuVC frontViewController:nav];
    revealController.delegate = self;
    revealController.rearViewRevealWidth = 201.5*[[self getModel] floatValue];
    self.window.rootViewController = revealController;
    [self.window makeKeyAndVisible];

    //APN Registration
    UIUserNotificationType types = UIUserNotificationTypeBadge |
    UIUserNotificationTypeSound | UIUserNotificationTypeAlert;
    
    UIUserNotificationSettings *bederrSettings =
    [UIUserNotificationSettings settingsForTypes:types categories:nil];
    
    [application registerUserNotificationSettings:bederrSettings];
    [application registerForRemoteNotifications];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
    [[CoreDataTool sharedInstance] saveContext];
}

#pragma mark - Model Device
-(NSNumber *)getModel {
    float valueScreen = [ [ UIScreen mainScreen ] bounds ].size.height;
    int integer = (int)valueScreen;
    switch (integer) {
        case 480:
            return @0.845;//S
            break;
        case 568:
            return @1;//5S
            break;
        case 667:
            return @1.174;//6
            break;
        case 736:
            return @1.295;//6Plus
            break;
        case 1024:
            return @0.9;//iPad
            break;
        case 1366:
            return @1.2;//iPad Pro
            break;
        default:
            return @1;//iPad
            break;
    }
    
}

@end
