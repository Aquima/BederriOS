//
//  LeftMenuViewController.m
//  Bederr
//
//  Created by Raúl Samuel Quispe Mamani on 6/3/16.
//  Copyright © 2016 Bederr S.A.C. All rights reserved.
//

#import "LeftMenuViewController.h"
#import "UIColor+Hex.h"
#import "OptionLeftTableViewCell.h"
#import "SWRevealViewController.h"
#import "HomeViewController.h"

#import "AskLogo.h"
#import "ProfileLogo.h"
#import "ExplorerLogo.h"
#import "NotificationsLogo.h"
#import "MyBenfitLogo.h"

@interface LeftMenuViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation LeftMenuViewController{
    CGSize sizeView;
    UITableView*currentTableView;
    NSArray*listMenu;
    SWRevealViewController *revealController;
    NSInteger currentRow;

    NSMutableArray*listIcons;
    
}
@synthesize proportionalValue;

NSString *const COLOR_STATE_NORMAL= @"15509d";
NSString *const COLOR_STATE_SELECTED= @"FEFEFE";
NSString *const COLOR_BACKGROUND= @"FEFEFE";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    float valuePro=[proportionalValue floatValue];
    sizeView = self.view.frame.size;
    listMenu = [self optionForMenu];
    currentRow = 0;

    currentTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 127*valuePro, self.view.frame.size.width, self.view.frame.size.height-127*valuePro)];
    [self.view addSubview:currentTableView];
    currentTableView.separatorColor =[UIColor clearColor];
//[currentTableView setBackgroundColor:[UIColor colorFromHexString:@"0374B6" withAlpha:1]];
    
    [currentTableView setDelegate:self];
    [currentTableView setDataSource:self];
    
    UIImageView*imgLogoLeft = [[UIImageView alloc] init];
    imgLogoLeft.frame = CGRectMake(0, 0, 236*valuePro, 127*valuePro);
    [self.view addSubview:imgLogoLeft];
    [imgLogoLeft setImage:[UIImage imageNamed:@"logoMenuLeft"]];
    
    [self createListIcons];
    
//This  code is for select first cell
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [currentTableView selectRowAtIndexPath:indexPath animated:true  scrollPosition:UITableViewScrollPositionTop];
    currentTableView.scrollEnabled = false;
    OptionLeftTableViewCell *lc = (OptionLeftTableViewCell*)[currentTableView cellForRowAtIndexPath:indexPath];
    [lc.optionTitle setTextColor:[UIColor colorFromHexString:COLOR_STATE_SELECTED withAlpha:1]];
    [lc loadTypeIcon:[listIcons objectAtIndex:indexPath.row*2+1]];

//BackgroundColor
    
    [currentTableView setBackgroundColor:[UIColor colorFromHexString:COLOR_BACKGROUND withAlpha:1]];
    [self.view setBackgroundColor:[UIColor colorFromHexString:COLOR_BACKGROUND withAlpha:1]];
    
}
-(NSArray*)optionForMenu{
    
    NSDictionary*item0 = @{@"title":NSLocalizedString(@"Option_One", nil)};
    NSDictionary*item1 = @{@"title":NSLocalizedString(@"Option_Two", nil)};
    NSDictionary*item2 = @{@"title":NSLocalizedString(@"Option_Three", nil)};

    NSArray*sendData = [[NSArray alloc] initWithObjects:item0,item1,item2, nil];
    
    return sendData;
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark - UIViewController
- (BOOL)prefersStatusBarHidden {
    return false;
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}
#pragma mark - Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [listMenu count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    OptionLeftTableViewCell *lc = (OptionLeftTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"OptionLeftTableViewCell"];
    
    if (lc == nil) {
        // Load the top-level objects from the custom cell XIB.
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"OptionLeftTableViewCell" owner:self options:nil];
        // Grab a pointer to the first object (presumably the custom cell, as that's all the XIB should contain).
        lc = [topLevelObjects objectAtIndex:0];
    }
   [lc setProportionalValue:proportionalValue];
    [lc setBackgroundColor:[UIColor clearColor]];
    lc.separatorInset = UIEdgeInsetsMake(0.f, lc.bounds.size.width, 0.f, 0.f);

    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [UIColor colorFromHexString:COLOR_STATE_NORMAL withAlpha:1];
    [lc setSelectedBackgroundView:bgColorView];
    [lc loadWithData:(NSDictionary*)[listMenu objectAtIndex:indexPath.row]];
    [lc loadTypeIcon:[listIcons objectAtIndex:indexPath.row*2]];
    
    return lc;
 
}

#pragma mark - Table View Delegate Methods
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
   
    OptionLeftTableViewCell *lc = (OptionLeftTableViewCell*)[tableView cellForRowAtIndexPath:indexPath];
    [lc.optionTitle setTextColor:[UIColor colorFromHexString:COLOR_STATE_NORMAL withAlpha:1]];
    [lc loadTypeIcon:[listIcons objectAtIndex:indexPath.row*2]];
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    OptionLeftTableViewCell *lc = (OptionLeftTableViewCell*)[tableView cellForRowAtIndexPath:indexPath];
    [lc.optionTitle setTextColor:[UIColor colorFromHexString:COLOR_STATE_SELECTED withAlpha:1]];
    [lc loadTypeIcon:[listIcons objectAtIndex:indexPath.row*2+1]];
    
    revealController = [self revealViewController];
    if (currentRow==indexPath.row) {
        
        [revealController setFrontViewPosition:FrontViewPositionLeft animated:YES];
        
    }else if (indexPath.row==0) {
        
        UINavigationController*nav;
        HomeViewController*homeScoreVC = [[HomeViewController alloc] init];
        [homeScoreVC setProportionalValue:proportionalValue];
        nav = [[UINavigationController alloc] initWithRootViewController:homeScoreVC];
        nav.navigationBarHidden = true;
        [revealController pushFrontViewController:nav animated:YES];

    }else if (indexPath.row==1){
        
        //Solicitar Ofertas de credito //GetOffersCreditCardsViewController
   
        
    }else if (indexPath.row==2){
        
        //Vender Deuda //SellDebtViewController
      
        
    }else if (indexPath.row==3){
        
        //Refinanciar credito //RefinanceCreditViewController
      
        
    }else if (indexPath.row==4){
        
        //Solicitar tarjeta de credito //GetCreditCardsViewController
      
        
    }else if (indexPath.row==5){
        
        //Close Sessión
        
    }
    currentRow = indexPath.row;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 50*[proportionalValue floatValue];
    
}
#pragma mark - Logo
-(void)createListIcons{
    
    listIcons = [[NSMutableArray alloc] init];
    
    AskLogo*logoAsk;
    ProfileLogo*logoProfile;
    NotificationsLogo*logoNotifications;
    ExplorerLogo*logoExplorer;
    MyBenfitLogo*logoBenefit;
    
    AskLogo*logoAskOn;
    ProfileLogo*logoProfileOn;
    NotificationsLogo*logoNotificationsOn;
    ExplorerLogo*logoExplorerOn;
    MyBenfitLogo*logoBenefitOn;
    
    float height=50*[proportionalValue floatValue];

    logoBenefit = [[MyBenfitLogo alloc] initWithFrame:CGRectMake(20*[proportionalValue floatValue],(height-34*[proportionalValue floatValue])/2, 34*[proportionalValue floatValue], 34*[proportionalValue floatValue])];
    [logoBenefit setBackgroundColor:[UIColor clearColor]];
    [logoBenefit changeColor:[UIColor colorFromHexString:COLOR_STATE_NORMAL withAlpha:1]];
    [listIcons addObject:logoBenefit];
    
    logoBenefitOn = [[MyBenfitLogo alloc] initWithFrame:CGRectMake(20*[proportionalValue floatValue],(height-34*[proportionalValue floatValue])/2, 34*[proportionalValue floatValue], 34*[proportionalValue floatValue])];
    [logoBenefitOn setBackgroundColor:[UIColor clearColor]];
    [logoBenefitOn changeColor:[UIColor whiteColor]];
    [listIcons addObject:logoBenefitOn];
    
    logoProfile = [[ProfileLogo alloc] initWithFrame:CGRectMake(20*[proportionalValue floatValue],(height-34*[proportionalValue floatValue])/2, 34*[proportionalValue floatValue], 34*[proportionalValue floatValue])];
    [logoProfile setBackgroundColor:[UIColor clearColor]];
    [logoProfile changeColor:[UIColor colorFromHexString:COLOR_STATE_NORMAL withAlpha:1]];
    [listIcons addObject:logoProfile];
    
    logoProfileOn = [[ProfileLogo alloc] initWithFrame:CGRectMake(20*[proportionalValue floatValue],(height-34*[proportionalValue floatValue])/2, 34*[proportionalValue floatValue], 34*[proportionalValue floatValue])];
    [logoProfileOn setBackgroundColor:[UIColor clearColor]];
    [logoProfileOn changeColor:[UIColor whiteColor]];
    [listIcons addObject:logoProfileOn];
    
    logoNotifications = [[NotificationsLogo alloc] initWithFrame:CGRectMake(20*[proportionalValue floatValue],(height-34*[proportionalValue floatValue])/2, 34*[proportionalValue floatValue], 34*[proportionalValue floatValue])];
    [logoNotifications setBackgroundColor:[UIColor clearColor]];
    [logoNotifications changeColor:[UIColor colorFromHexString:COLOR_STATE_NORMAL withAlpha:1]];
    [listIcons addObject:logoNotifications];
    
    logoNotificationsOn = [[NotificationsLogo alloc] initWithFrame:CGRectMake(20*[proportionalValue floatValue],(height-34*[proportionalValue floatValue])/2, 34*[proportionalValue floatValue], 34*[proportionalValue floatValue])];
    [logoNotificationsOn setBackgroundColor:[UIColor clearColor]];
    [logoNotificationsOn changeColor:[UIColor whiteColor]];
    [listIcons addObject:logoNotificationsOn];

    logoExplorer = [[ExplorerLogo alloc] initWithFrame:CGRectMake(20*[proportionalValue floatValue],(height-34*[proportionalValue floatValue])/2, 34*[proportionalValue floatValue], 34*[proportionalValue floatValue])];
    [logoExplorer setBackgroundColor:[UIColor clearColor]];
    [logoExplorer changeColor:[UIColor colorFromHexString:COLOR_STATE_NORMAL withAlpha:1]];
    [listIcons addObject:logoExplorer];
    
    logoExplorerOn = [[ExplorerLogo alloc] initWithFrame:CGRectMake(20*[proportionalValue floatValue],(height-34*[proportionalValue floatValue])/2, 34*[proportionalValue floatValue], 34*[proportionalValue floatValue])];
    [logoExplorerOn setBackgroundColor:[UIColor clearColor]];;
    [logoExplorerOn changeColor:[UIColor whiteColor]];
    [listIcons addObject:logoExplorerOn];
    
    logoAsk = [[AskLogo alloc] initWithFrame:CGRectMake(20*[proportionalValue floatValue],(height-34*[proportionalValue floatValue])/2, 34*[proportionalValue floatValue], 34*[proportionalValue floatValue])];
    [logoAsk setBackgroundColor:[UIColor clearColor]];
    [logoAsk changeColor:[UIColor colorFromHexString:COLOR_STATE_NORMAL withAlpha:1]];
    [logoAsk setNeedsDisplay];
    [listIcons addObject:logoAsk];
    
    logoAskOn = [[AskLogo alloc] initWithFrame:CGRectMake(20*[proportionalValue floatValue],(height-34*[proportionalValue floatValue])/2, 34*[proportionalValue floatValue], 34*[proportionalValue floatValue])];
    [logoAskOn setBackgroundColor:[UIColor clearColor]];
    [logoAskOn changeColor:[UIColor whiteColor]];
    [logoAskOn setNeedsDisplay];
    [listIcons addObject: logoAskOn];
    
}

@end
