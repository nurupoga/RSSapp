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
    
    //adad
    banner = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner];
    banner.adUnitID = @"ca-app-pub-5835000907268943/3458275514";
    banner.rootViewController = self;
    [self.bannerView addSubview:banner];
    
    [banner loadRequest:[GADRequest request]];
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
