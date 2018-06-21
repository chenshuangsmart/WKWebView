//
//  WKDelegateViewController.h
//  WKWebView
//
//  Created by cs on 2018/6/21.
//  Copyright © 2018年 cs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@protocol WKDelegate <NSObject>

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message;

@end

@interface WKDelegateViewController : UIViewController <WKScriptMessageHandler>

/** 代理 */
@property(nonatomic, weak) id<WKDelegate> delegate;

@end
