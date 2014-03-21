//
//  ViewController.h
//  Test_toolBar
//
//  Created by wangbin on 14-3-12.
//  Copyright (c) 2014年 wangbin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AVOToolBar.h"

@interface ViewController : UIViewController{
    AVOToolBar *tool;
}
@property (retain, nonatomic) IBOutlet UITextField *avotext;
@property (retain, nonatomic) IBOutlet UITextField *text;
- (IBAction)action:(UIButton *)sender;

@end
