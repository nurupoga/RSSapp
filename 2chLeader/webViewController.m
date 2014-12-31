//
//  webViewController.m
//  2chLeader
//
//  Created by ohtatomotaka on 2014/12/30.
//  Copyright (c) 2014年 ohtatomotaka. All rights reserved.
//

#import "webViewController.h"

@interface webViewController ()

@end

@implementation webViewController
@synthesize socialUrl;
- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",socialUrl);
    NSURL *url = [NSURL URLWithString:socialUrl];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    [webView loadRequest:req];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// ページ読込開始時にインジケータをくるくるさせる
-(void)webViewDidStartLoad:(UIWebView*)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

// ページ読込完了時にインジケータを非表示にする
-(void)webViewDidFinishLoad:(UIWebView*)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}
-(IBAction)fav{

}

@end
