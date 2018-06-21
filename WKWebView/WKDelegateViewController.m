//
//  WKDelegateViewController.m
//  WKWebView
//
//  Created by cs on 2018/6/21.
//  Copyright © 2018年 cs. All rights reserved.
//

#import "WKDelegateViewController.h"

@interface WKDelegateViewController ()

@end

@implementation WKDelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {
    if ([self.delegate respondsToSelector:@selector(userContentController:didReceiveScriptMessage:)]) {
        [self.delegate userContentController:userContentController didReceiveScriptMessage:message];
    }
}

@end
