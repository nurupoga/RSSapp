//
//  ViewController.h
//  2chLeader
//
//  Created by ohtatomotaka on 2014/12/19.
//  Copyright (c) 2014年 ohtatomotaka. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MWFeedParser.h"
@interface ViewController : UIViewController<MWFeedParserDelegate,UITableViewDataSource,UITableViewDelegate> {
    IBOutlet UITableView *rsstable;
    IBOutlet UIButton *button;
    // Parsing
    MWFeedParser *feedParser;
    NSMutableArray *parsedItems;
    
    // Displaying
    NSArray *itemsToDisplay;
    NSDateFormatter *formatter;
    
}



@end

