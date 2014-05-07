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
    
 IBOutlet UILabel *NameField;
 IBOutlet UILabel *LocationField;
 IBOutlet UILabel *NumberField;
 IBOutlet UILabel *DiscountField;
 IBOutlet UILabel *CouponField;
 IBOutlet UILabel *WebsiteField;
}

@property (nonatomic,retain) List *theList;

@end
