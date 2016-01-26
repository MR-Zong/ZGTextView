//
//  ZGSimpleTextView.h
//  ZGTextView
//
//  Created by 徐宗根 on 16/1/26.
//  Copyright © 2016年 XuZonggen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZGSimpleTextView : UIView<UIKeyInput> {
    UIColor *textColor;
    UIFont *font;
    NSMutableString *textStore;
}

@property (nonatomic, retain) UIColor *textColor;
@property (nonatomic, retain) UIFont *font;
@property (nonatomic, retain) NSMutableString *textStore;


@end
