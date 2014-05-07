//
//  RHDetailViewController.h
//  RosePerksTest
//
//  Created by HUANG ZIYANG on 4/14/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "List.h"

@interface RHDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *NameField;
@property (weak, nonatomic) IBOutlet UILabel *CategoryField;
@property (weak, nonatomic) IBOutlet UILabel *LocationField;
@property (weak, nonatomic) IBOutlet UILabel *NumberField;
@property (weak, nonatomic) IBOutlet UILabel *DiscountField;
@property (weak, nonatomic) IBOutlet UILabel *CouponField;
@property (weak, nonatomic) IBOutlet UILabel *WebsiteField;

@property (nonatomic,retain) List *theList;

@end
