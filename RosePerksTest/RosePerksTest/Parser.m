//
//  Parser.m
//  RosePerksTest
//
//  Created by HUANG ZIYANG on 4/14/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import "Parser.h"

@implementation Parser

-(id) initParser{
    if(self == [super init]){
        app = (RHAppDelegate *)[[UIApplication sharedApplication] delegate];
    }
    return self;
}

-(void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict{
    if([elementName isEqualToString:@"companyList"]){
        app.ListArray = [[NSMutableArray alloc] init];
    }
    else if([elementName isEqualToString:@"company"]){
        
        theList =[[List alloc] init];
        theList.CompanyID = [[attributeDict objectForKey:@"id"] integerValue];
        
    }
        

}

-(void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    if(!currentElementValue){
        currentElementValue = [[NSMutableString alloc] initWithString:string];
    }
    else{
        [currentElementValue appendString:string];
    }

}

-(void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    if([elementName isEqualToString:@"companyList"]){
        return;
    }
    
    if([elementName isEqualToString:@"company"]){
        [app.ListArray addObject:theList];
        theList = nil;
    }
    else
        [theList setValue:currentElementValue forKey:elementName];
    
    currentElementValue= nil;
    
    
    
}

@end
