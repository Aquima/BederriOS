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

@interface LeftMenuViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation LeftMenuViewController{
    CGSize sizeView;
    UITableView*currentTableView;
    NSArray*listMenu;
    SWRevealViewController *revealController;
    NSInteger currentRow;
}
//and you.. you are.. you are my favorite
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    sizeView = self.view.frame.size;
    listMenu = [self optionForMenu];
    currentRow = 0;
    UIImageView*imgTopHead = [[UIImageView alloc] init];
    [imgTopHead setImage:[UIImage imageNamed:@"backgroundMenuTop"]];
    imgTopHead.frame = CGRectMake(0,0, 201.5, 231.5);
    [imgTopHead setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:imgTopHead];
    
    UIImageView*imgProfile = [[UIImageView alloc] init];
    [imgProfile setImage:[UIImage imageNamed:@"profile"]];
    imgProfile.frame = CGRectMake(14,96.5, 66, 66);
    [imgProfile setBackgroundColor:[UIColor clearColor]];
    imgProfile.layer.cornerRadius = imgProfile.frame.size.width/2;
    imgProfile.layer.masksToBounds = true;
    imgProfile.layer.borderWidth = 1;
    imgProfile.layer.borderColor = [UIColor whiteColor].CGColor;
    [self.view addSubview:imgProfile];
    
    UILabel*lblTitleName = [[UILabel alloc] initWithFrame:CGRectMake(imgProfile.frame.origin.x+imgProfile.frame.size.width+5, imgProfile.frame.origin.y+15, sizeView.width-40, 24)];
  //  [lblTitleName setText:[NSString  stringWithFormat:@"%@",[currentData objectForKey:@"name"]]];
    [lblTitleName setText:@"ALEXANDER AGUSTIN \nRODRIGUEZ BANCHO"];
    [lblTitleName setFont:[UIFont fontWithName:@"Helvetica-Light" size:10]];
    [lblTitleName setTextColor:[UIColor colorFromHexString:@"0374B6" withAlpha:1]];
    [lblTitleName setTextAlignment:NSTextAlignmentLeft];
    [lblTitleName setLineBreakMode:NSLineBreakByWordWrapping];
    [lblTitleName setNumberOfLines:2];
    //  [lblTitleName setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:lblTitleName];
    
    UILabel*lblTitleDocument = [[UILabel alloc] initWithFrame:CGRectMake(imgProfile.frame.origin.x+imgProfile.frame.size.width+5, imgProfile.frame.origin.y+39, sizeView.width-40, 12)];
  //  [lblTitleDocument setText:[NSString  stringWithFormat:@"DNI: %@",[currentData objectForKey:@"DNI"]]];
    [lblTitleDocument setText:@"DNI: 34564322"];
    [lblTitleDocument setFont:[UIFont fontWithName:@"Helvetica" size:9]];
    [lblTitleDocument setTextColor:[UIColor colorFromHexString:@"0374B6" withAlpha:1]];
    [lblTitleDocument setTextAlignment:NSTextAlignmentLeft];
    [self.view addSubview:lblTitleDocument];
    
    UIImageView*imgLogo = [[UIImageView alloc] init];
    [imgLogo setImage:[UIImage imageNamed:@"logoKalifikaDark"]];
    imgLogo.frame = CGRectMake((imgTopHead.frame.size.width-113)/2,56, 113, 25);
    [self.view addSubview:imgLogo];
 
    [self.view setBackgroundColor:[UIColor colorFromHexString:@"0374B6" withAlpha:1]];
    
    currentTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 249,190, self.view.frame.size.height-249)];
    [self.view addSubview:currentTableView];
    currentTableView.separatorColor =[UIColor clearColor];
    [currentTableView setBackgroundColor:[UIColor colorFromHexString:@"0374B6" withAlpha:1]];
    
    [currentTableView setDelegate:self];
    [currentTableView setDataSource:self];
    //this  code is for select first cell
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [currentTableView selectRowAtIndexPath:indexPath animated:true  scrollPosition:UITableViewScrollPositionTop];
    OptionLeftTableViewCell *lc = (OptionLeftTableViewCell*)[currentTableView cellForRowAtIndexPath:indexPath];
    [lc.optionTitle setTextColor:[UIColor colorFromHexString:@"0374B6" withAlpha:1]];
    [lc loadTypeIcon:(NSDictionary*)[listMenu objectAtIndex:indexPath.row] withType:@"Off"];
    
}
-(NSArray*)optionForMenu{
    
    NSDictionary*item0 = @{@"title":@"Mi Score",@"icono":@"btnScore"};
    NSDictionary*item1 = @{@"title":@"Solicitar Ofertas de \nCredito",@"icono":@"btnOffer"};
    NSDictionary*item2 = @{@"title":@"Vender Deuda",@"icono":@"btnSoldOut"};
    NSDictionary*item3 = @{@"title":@"Refinanciar Credito",@"icono":@"btnAgree"};
    NSDictionary*item4 = @{@"title":@"Solicitar Tarjeta de \nCredito",@"icono":@"btnGetCard"};
    NSDictionary*item5 = @{@"title":@"Cerrar Sesión",@"icono":@"btnLogOut"};
    
    NSArray*sendData = [[NSArray alloc] initWithObjects:item0,item1,item2,item3,item4,item5, nil];
    
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
    return true;
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
    [lc setBackgroundColor:[UIColor clearColor]];
    lc.separatorInset = UIEdgeInsetsMake(0.f, lc.bounds.size.width, 0.f, 0.f);

    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [UIColor colorFromHexString:@"FEFEFE" withAlpha:1];
    [lc setSelectedBackgroundView:bgColorView];
    [lc loadWithData:(NSDictionary*)[listMenu objectAtIndex:indexPath.row]];
    [lc loadTypeIcon:(NSDictionary*)[listMenu objectAtIndex:indexPath.row] withType:@"On"];
    return lc;
 
}

#pragma mark - Table View Delegate Methods
-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
   
    OptionLeftTableViewCell *lc = (OptionLeftTableViewCell*)[tableView cellForRowAtIndexPath:indexPath];
    [lc.optionTitle setTextColor:[UIColor colorFromHexString:@"FEFEFE" withAlpha:1]];
    [lc loadTypeIcon:(NSDictionary*)[listMenu objectAtIndex:indexPath.row] withType:@"On"];
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    OptionLeftTableViewCell *lc = (OptionLeftTableViewCell*)[tableView cellForRowAtIndexPath:indexPath];
    [lc.optionTitle setTextColor:[UIColor colorFromHexString:@"0374B6" withAlpha:1]];
    [lc loadTypeIcon:(NSDictionary*)[listMenu objectAtIndex:indexPath.row] withType:@"Off"];
    
    revealController = [self revealViewController];
    if (currentRow==indexPath.row) {
        
        [revealController setFrontViewPosition:FrontViewPositionLeft animated:YES];
        
    }else if (indexPath.row==0) {
        
        UINavigationController*nav;
        HomeViewController*homeScoreVC = [[HomeViewController alloc] init];
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
    
    return 40;
    
}
@end
