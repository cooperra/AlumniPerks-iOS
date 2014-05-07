//
//  RHAppDelegate.h
//  RosePerksTest
//
//  Created by HUANG ZIYANG on 3/20/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "List.h"

@interface RHAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSMutableArray *ListArray;
@property (strong, nonatomic) UINavigationController *navigationController;
@property (nonatomic) Boolean offline;
@end
