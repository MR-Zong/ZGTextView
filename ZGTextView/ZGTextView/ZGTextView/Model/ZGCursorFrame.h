//
//  ZGCursorFrame.h
//  ZGTextView
//
//  Created by Zong on 16/1/31.
//  Copyright © 2016年 XuZonggen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZGCursorFrame : NSObject

@property (nonatomic, assign) CGRect cursorRect;

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

+ (instancetype)cursorFrameWithRect:(CGRect)cursorRect;


@end
