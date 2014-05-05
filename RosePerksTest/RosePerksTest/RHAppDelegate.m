//
//  RHAppDelegate.m
//  RosePerksTest
//
//  Created by HUANG ZIYANG on 3/20/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import "RHAppDelegate.h"
#import "Parser.h"
#import "RHMasterTableViewController.h"


@implementation RHAppDelegate
@synthesize ListArray;
@synthesize window = _window;
@synthesize navigationController = _navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    NSString *path = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"PerksList.xml"];
//    NSURL *url = [[NSURL alloc]initWithString:@"http://alumniperks.csse.rose-hulman.edu/companyList.xml"];
//    NSData *data = [[NSData alloc]initWithContentsOfURL:url];
//    NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:data];
    
    NSString *path = @"/Users/huangz/Desktop/AlumniPerks-iOS/PerksList.xml";
    NSString *standardizedPath = [path stringByStandardizingPath];
    // standardizedPath: /usr/include
    
    //NSString *path = [[[NSBundle mainBundle] resourcePath] stringByAppendingString:@"/Users/csse/Desktop/PerksList.xml"];
    NSData *data = [[NSData alloc] initWithContentsOfFile:standardizedPath];
    NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:data];
    
    Parser *theParser = [[Parser alloc] initParser];
    [xmlParser setDelegate:theParser];
    
    BOOL worked = [xmlParser parse];
    if(worked) {
        NSLog(@"Amount %i",[ListArray count]);
    }
    else{
        NSLog(@"boo");
    }
    
    //self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    NSLog(@"one");
    //RHMasterTableViewController *masterViewController = [[RHMasterTableViewController alloc] initWithNibName:@"RHMasterTableViewController" bundle:nil];
    
   // UIStoryboard*  sb = [UIStoryboard storyboardWithName:[[NSBundle mainBundle].infoDictionary objectForKey:@"Main.storyboard"] bundle:[NSBundle mainBundle]];
                                                  
   // RHMasterTableViewController* masterViewController = [sb instantiateViewControllerWithIdentifier                                                    :@"RHMasterTableViewController"];
    
    NSLog(@"two");
    //self.navigationController = [[UINavigationController alloc] initWithRootViewController:masterViewController];
    NSLog(@"three");
    //self.window.rootViewController = self.navigationController;
    NSLog(@"four");
    //[self.window makeKeyAndVisible];
    NSLog(@"five");
    
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
