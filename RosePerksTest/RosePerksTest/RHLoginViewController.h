//
//  RHLoginViewController.h
//  RosePerksTest
//
//  Created by HUANG ZIYANG on 5/14/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RHLoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *EmailTextField;
@property (weak, nonatomic) IBOutlet UITextField *PasswordTextField;
- (IBAction)LoginButton:(id)sender;
- (IBAction)RoseStemButton:(id)sender;

@end
