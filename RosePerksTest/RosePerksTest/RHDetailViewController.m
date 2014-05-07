//
//  RHDetailViewController.m
//  RosePerksTest
//
//  Created by HUANG ZIYANG on 4/14/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import "RHDetailViewController.h"

//@interface RHDetailViewController ()

@implementation RHDetailViewController
@synthesize theList;
//
//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    LogoView.image = [UIImage imageWithContentsOfFile:[NSString stringWithFormat:@"%d%@", theList.CompanyID, @".jpg"]];

    self.title = theList.name;
    LocationField.text = theList.location;
    NumberField.text = theList.number;
    DiscountField.text = theList.discount;
    
    
    LocationField.textAlignment = NSTextAlignmentCenter;
    NumberField.textAlignment =NSTextAlignmentCenter;
    DiscountField.textAlignment = NSTextAlignmentCenter;

    
    
    NSString *coupon =[theList.coupon stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if ([coupon length] ==0)
    {
        self->CouponBut.hidden = YES;
    }
    NSString *website =[theList.website stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if ([website length] ==0)
    {
        self->DetailBut.hidden = YES;
    }

}



- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}


-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
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

- (IBAction)CouponButton:(id)sender {
    NSString *coupon =[theList.coupon stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];


    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:coupon]];
    
}

- (IBAction)MoreDetailButton:(id)sender {
    NSString *website =[theList.website stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

        
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:website]];

}
@end
