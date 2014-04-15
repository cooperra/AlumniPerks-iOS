//
//  Parser.h
//  RosePerksTest
//
//  Created by HUANG ZIYANG on 4/14/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RHAppDelegate.h"
#import "List.h"

@interface Parser : NSObject <NSXMLParserDelegate>{
    
    RHAppDelegate *app;
    List *theList;
    NSMutableString *currentElementValue;
    
    
}

-(id)initParser;



@end
