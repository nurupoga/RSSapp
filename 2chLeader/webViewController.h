//
//  webViewController.h
//  2chLeader
//
//  Created by ohtatomotaka on 2014/12/30.
//  Copyright (c) 2014年 ohtatomotaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface webViewController : UIViewController{
    IBOutlet UIWebView *webView;
}
@property (nonatomic,copy) NSString *socialUrl;
-(IBAction)fav;
@end
