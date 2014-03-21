//
//  AVOToolBar.m
//  Test_toolBar
//
//  Created by wangbin on 14-3-18.
//  Copyright (c) 2014年 wangbin. All rights reserved.
//

#import "AVOToolBar.h"

@implementation AVOToolBar
@synthesize leftButton,rightButton,titleLabel;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

+ (id)custumFrameWithTarget:(id)target withLeftTitle:(NSString *)leftTitle leftAction:(SEL)lAction withRightTitle:(NSString *)rightTitle rightAction:(SEL)rAction withTitle:(NSString *)title
{
    CGRect frame = CGRectMake(0, 0, 320, 44);
    return [[[self alloc] initWithFrame:frame withTarget:target withLeftTitle:leftTitle leftAction:lAction withRightTitle:rightTitle rightAction:rAction withTitle:title]autorelease];
}

- (id)initWithFrame:(CGRect)frame withTarget:(id)target withLeftTitle:(NSString *)leftTitle leftAction:(SEL)lAction withRightTitle:(NSString *)rightTitle rightAction:(SEL)rAction withTitle:(NSString *)title
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor=[UIColor lightGrayColor];
        
        if (leftTitle) {
            leftButton =[UIButton buttonWithType:UIButtonTypeCustom];
            leftButton.frame=CGRectMake(0, 0, 60, 44);
            [leftButton setTitle:leftTitle forState:UIControlStateNormal];
            [leftButton addTarget:target action:lAction forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:leftButton];
        }

        if (title) {
            titleLabel = [[[UILabel alloc] initWithFrame:CGRectMake(60 , 0, 200, 44)]autorelease];
            [titleLabel setFont:[UIFont boldSystemFontOfSize:18]];
            [titleLabel setBackgroundColor:[UIColor clearColor]];
            titleLabel.textColor=[UIColor whiteColor];
            titleLabel.textAlignment=NSTextAlignmentCenter;
            titleLabel.text=title;
            [self addSubview:titleLabel];
        }
        
        if (rightTitle) {
            rightButton =[UIButton buttonWithType:UIButtonTypeCustom];
            rightButton.frame=CGRectMake(260, 0, 60, 44);
            [rightButton setTitle:rightTitle forState:UIControlStateNormal];
            [rightButton addTarget:target action:rAction forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:rightButton];
        }
    }
    return self;
}

- (void)setTitle:(NSString *)title{
    titleLabel.text=title;
}

- (NSString *)title{
    return titleLabel.text;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
