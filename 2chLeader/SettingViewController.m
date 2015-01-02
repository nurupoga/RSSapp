//
//  SettingViewController.m
//  2chLeader
//
//  Created by ohtatomotaka on 2014/12/20.
//  Copyright (c) 2014年 ohtatomotaka. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()

@end

@implementation SettingViewController{}

- (void)viewDidLoad {
    [super viewDidLoad];
    linkArray = [NSMutableArray array];

}

-(IBAction)backButton{
    if (switch1.on) {
        NSLog(@"add");
        [linkArray addObject:@"http://pad-plus.com/feed"];
    }
    if(switch2.on){
        [linkArray addObject:@"http://blog.livedoor.jp/monstsoku/index.rdf"];
    }
    if(switch3.on){
        [linkArray addObject:@"http://www.magicianwiz.net/index.rdf"];
    }
    if(switch4.on){
        [linkArray addObject:@"http://lovelivepress.com/?xml"];
    }
    if(switch5.on){
        [linkArray addObject:@"http://ffrk0009.blog.jp/index.rdf"];
    }
    if(switch6.on){
        [linkArray addObject:@"http://xn--o9j0bk3kpb2dvp4cwd8db4721gp10a4jxn3qx54dm78e2oza.com/index.rdf"];
    }
    NSLog(@"%d:link",[linkArray count]);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:linkArray];
    [defaults setObject:data forKey:@"thelink"];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
