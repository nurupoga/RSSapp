//
//  webViewController.h
//  2chLeader
//
//  Created by ohtatomotaka on 2014/12/30.
//  Copyright (c) 2014年 ohtatomotaka. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADBannerView.h"
@interface webViewController : UIViewController{
    IBOutlet UIWebView *webView;
    GADBannerView *banner;
}
@property (nonatomic,copy) NSString *socialUrl;
@property (weak, nonatomic) IBOutlet UIView *bannerView;

@end
