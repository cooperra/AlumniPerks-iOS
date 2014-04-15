//
//  RHMasterTableViewController.h
//  RosePerksTest
//
//  Created by HUANG ZIYANG on 4/14/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RHAppDelegate.h"
#import "List.h"

@class RHDetailViewController;


@interface RHMasterTableViewController : UITableViewController

@property (strong,nonatomic) RHDetailViewController *detailViewController;
@property (nonatomic,retain) RHAppDelegate *app;
@property (nonatomic,retain) List *theList;




@end
