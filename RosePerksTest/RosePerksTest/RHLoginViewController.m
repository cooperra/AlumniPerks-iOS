//
//  RHLoginViewController.m
//  RosePerksTest
//
//  Created by HUANG ZIYANG on 5/14/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import "RHLoginViewController.h"

@interface RHLoginViewController ()

@end

@implementation RHLoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return NO;
}

- (IBAction)LoginButton:(id)sender {
    if ([self.PasswordTextField.text isEqualToString:@"foreverrose"]){
        NSLog(@"YES!");
        {
            RHLoginViewController *LoginView = [self.storyboard instantiateViewControllerWithIdentifier:@"View"];

            [self.navigationController pushViewController:LoginView animated:YES];
        }
        
    }
    return;
    
}

- (IBAction)RoseStemButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://rosestem.rose-hulman.edu/"]];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
