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
#import "RHCategory.h"


@class RHDetailViewController;


@interface RHMasterTableViewController : UITableViewController

@property (strong,nonatomic) RHDetailViewController *detailViewController;
@property (nonatomic,retain) RHAppDelegate *app;
@property (nonatomic,retain) List *theList;
@property (nonatomic,retain) List *allPerksList;
@property (nonatomic,retain) RHCategory *objectivecateg;
@property (nonatomic) NSUInteger counter;
@property (nonatomic) NSUInteger fakeIndexPath;
@property (nonatomic) NSUInteger size;
@property (nonatomic) NSMutableDictionary *indexPathMap;
- (List*)newElement:(NSUInteger)counter;
- (void)populateMap:(NSInteger) size;


@end
