//
//  TelControl.h
//  Jin
//
//  Created by WangMiao on 13-10-14.
//  Copyright (c) 2013年 WangMiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TelControl : NSObject<UIAlertViewDelegate,UIWebViewDelegate>
{
}

+(void) telPhone:(NSString*) number  view:(UIView *) view;

@end
