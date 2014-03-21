//
//  AVOToolBar.h
//  Test_toolBar
//
//  Created by wangbin on 14-3-18.
//  Copyright (c) 2014年 wangbin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AVOToolBar : UIView

@property (strong, nonatomic) UIButton *rightButton;
@property (strong, nonatomic) UIButton *leftButton;
@property (strong, nonatomic) UILabel *titleLabel;

+ (id)custumFrameWithTarget:(id)target withLeftTitle:(NSString *)leftTitle leftAction:(SEL)lAction withRightTitle:(NSString *)rightTitle rightAction:(SEL)rAction withTitle:(NSString *)title;

@end
