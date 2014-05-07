//
//  RHDetailViewController.h
//  RosePerksTest
//
//  Created by HUANG ZIYANG on 4/14/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "List.h"

@interface RHDetailViewController : UIViewController{
    
    __weak IBOutlet UIImageView *LogoView;
 IBOutlet UILabel *LocationField;
 IBOutlet UILabel *NumberField;
 IBOutlet UILabel *DiscountField;
    __weak IBOutlet UIButton *DetailBut;
 
    __weak IBOutlet UIButton *CouponBut;
}

@property (nonatomic,retain) List *theList;
- (IBAction)CouponButton:(id)sender;
- (IBAction)MoreDetailButton:(id)sender;


@end
