//
//  RHViewController.m
//  RosePerksTest
//
//  Created by HUANG ZIYANG on 3/20/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import "RHViewController.h"

@interface RHViewController ()

@end

@implementation RHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)GoogleMapButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://mapsengine.google.com/map/u/0/edit?mid=zRBarr6eawLk.kMs2XUUHErnM"]];
    
}

- (IBAction)PerksListButton:(id)sender {
    RHCategory *obj = [RHCategory getInstance];
    obj.currentCategory = @"";
    
}
@end
