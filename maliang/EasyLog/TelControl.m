//
//  TelControl.m
//  Jin
//
//  Created by WangMiao on 13-10-14.
//  Copyright (c) 2013年 WangMiao. All rights reserved.
//

#import "TelControl.h"
@implementation TelControl


+(void) telPhone:(NSString*) number  view:(UIView *) view
{
 
    NSString* numberAfterClear =[NSString stringWithFormat:@"tel://%@",number];
    UIWebView*callWebview =[[UIWebView alloc] init] ;
//    callWebview.delegate=[TelControl alloc];
    // tel:  或者 tel://
    NSURL *telURL =[NSURL URLWithString:numberAfterClear];
    [callWebview loadRequest:[NSURLRequest requestWithURL:telURL]];
    
    [view addSubview:callWebview];
    
   
}





@end




