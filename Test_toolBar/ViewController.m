//
//  ViewController.m
//  Test_toolBar
//
//  Created by wangbin on 14-3-12.
//  Copyright (c) 2014年 wangbin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	tool=[AVOToolBar custumFrameWithTarget:self withLeftTitle:@"Clear" leftAction:@selector(leftAction) withRightTitle:@"Done" rightAction:@selector(rightAction:) withTitle:@"Choose Date"];
    self.avotext.inputAccessoryView=tool;
}

- (void)rightAction:(UIButton *) sender{
    NSLog(@"rightAction >>");
}

- (void)leftAction{
    NSLog(@"leftAction >>");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)action:(UIButton *)sender {
    
}
- (void)dealloc {
    [_text release];
    [_avotext release];
    [super dealloc];
}
- (void)viewDidUnload {
    [self setText:nil];
    [self setAvotext:nil];
    [super viewDidUnload];
}
@end
