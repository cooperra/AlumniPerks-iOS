//
//  RHUIImageResizing.m
//  RosePerksTest
//
//  Created by CSSE Department on 4/30/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import "RHUIImageResizing.h"

// Put this in UIImageResizing.m
@implementation UIImage (Resize)

- (UIImage*)scaleToSize:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, 0.0, size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CGContextDrawImage(context, CGRectMake(0.0f, 0.0f, size.width, size.height), self.CGImage);
    
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return scaledImage;
}

@end
