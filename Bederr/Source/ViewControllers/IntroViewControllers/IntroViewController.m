//
//  IntroViewController.m
//  Bederr
//
//  Created by Raúl Samuel Quispe Mamani on 6/8/16.
//  Copyright © 2016 Bederr S.A.C. All rights reserved.
//

#import "IntroViewController.h"
#import "UIColor+Hex.h"

@interface IntroViewController ()

@end

@implementation IntroViewController{
    CGSize sizeView;
    NSString*currentToken;
    UIButton*btnSettings;
    NSDictionary*currentProfile;
    NSString*strFirstName;
    NSString*strLastName;
    NSString*birthday;
    UILabel*lblMessage;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    sizeView = self.view.frame.size;
    [self.view setBackgroundColor:[UIColor colorFromHexString:@"F1F0EC" withAlpha:1]];
    
    [self drawBody];
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

-(void)drawBody{
    
    UIButton*btnFacebook = [[UIButton alloc] init];
    btnFacebook.frame = CGRectMake((sizeView.width-476/2)/2, sizeView.height-50-15-85, 476/2, 85/2);
    btnFacebook.layer.cornerRadius = 3;
    btnFacebook.layer.masksToBounds = true;
    [btnFacebook setBackgroundColor:[UIColor colorFromHexString:@"1268aa" withAlpha:1]];
    btnFacebook.titleLabel.font = [UIFont fontWithName:@"Helvetica" size:16];
    [btnFacebook setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    // [btnFacebook setTitle:NSLocalizedString(@"BTN_TITLE_FACEBOOK", nil) forState:UIControlStateNormal];
    [btnFacebook setTitle:NSLocalizedString(@"BTN_TITLE_LOGIN", nil) forState:UIControlStateNormal];
    [btnFacebook addTarget:self action:@selector(loginAction:) forControlEvents:UIControlEventTouchUpInside];
    //[btnFacebook setHidden:true];
    [self.view addSubview:btnFacebook];
    
    //    UIButton*btnBederr = [[UIButton alloc] init];
    //    btnBederr.frame = CGRectMake((sizeView.width-476/2)/2, sizeView.height-50-85/2, 476/2, 85/2);
    //    btnBederr.frame = CGRectMake((sizeView.width-476/2)/2, sizeView.height-50-15-85, 476/2, 85/2);
    //    btnBederr.layer.cornerRadius = 3;
    //    btnBederr.layer.masksToBounds = true;
    //    [btnBederr setBackgroundColor:[UIColor colorFromHexString:@"2098ce" withAlpha:1]];
    //    btnBederr.titleLabel.font = [UIFont fontProximaNovaALight:16];
    //    [btnBederr setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //    [btnBederr setTitle:NSLocalizedString(@"BTN_TITLE_BEDERR", nil) forState:UIControlStateNormal];
    //    [btnBederr addTarget:self action:@selector(loginButton:) forControlEvents:UIControlEventTouchUpInside];
    //    [self.view addSubview:btnBederr];
    //    [btnSettings setHidden:true];
    //    [lblMessage setHidden:true];

    UIButton*btnRegister = [[UIButton alloc] init];
    btnRegister.frame = CGRectMake(0, sizeView.height-55,sizeView.width, 55);
    [btnRegister setBackgroundColor:[UIColor colorFromHexString:@"2896d3" withAlpha:1]];
    btnRegister.titleLabel.font = [UIFont fontWithName:@"Helvetica" size:17];
    [btnRegister setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btnRegister setTitle:NSLocalizedString(@"BTN_TITLE_REGISTER", nil) forState:UIControlStateNormal];
    [btnRegister addTarget:self action:@selector(registerAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnRegister];
 
}
-(IBAction)loginAction:(id)sender{
    
}
-(IBAction)registerAction:(id)sender{
    
}
@end
