//
//  SettingViewController.h
//  2chLeader
//
//  Created by ohtatomotaka on 2014/12/20.
//  Copyright (c) 2014年 ohtatomotaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingViewController : UIViewController{
    IBOutlet UISwitch *switch1;
    IBOutlet UISwitch *switch2;
    IBOutlet UISwitch *switch3;
    IBOutlet UISwitch *switch4;
    IBOutlet UISwitch *switch5;
    IBOutlet UISwitch *switch6;
    NSMutableArray *linkArray;
}
-(IBAction)backButton;
@end
