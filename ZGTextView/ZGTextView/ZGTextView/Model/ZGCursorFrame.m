//
//  ZGCursorFrame.m
//  ZGTextView
//
//  Created by Zong on 16/1/31.
//  Copyright © 2016年 XuZonggen. All rights reserved.
//

#import "ZGCursorFrame.h"

@implementation ZGCursorFrame

@dynamic x;
@dynamic y;
@dynamic width;
@dynamic height;

- (CGFloat)x
{
    return self.cursorRect.origin.x;
}

- (void)setX:(CGFloat)x
{
    CGRect tmpRect = self.cursorRect;
    tmpRect.origin.x = x;
    self.cursorRect = tmpRect;
}

- (CGFloat)y
{
    return self.cursorRect.origin.y;
}

- (void)setY:(CGFloat)y
{
    CGRect tmpRect = self.cursorRect;
    tmpRect.origin.y = y;
    self.cursorRect = tmpRect;
}

- (CGFloat)width
{
    return self.cursorRect.size.width;
}

- (void)setWidth:(CGFloat)width
{
    CGRect tmpRect = self.cursorRect;
    tmpRect.size.width = width;
    self.cursorRect = tmpRect;
}

- (CGFloat)height
{
    return self.cursorRect.size.height;
}

- (void)setHeight:(CGFloat)height
{
    CGRect tmpRect = self.cursorRect;
    tmpRect.size.height = height;
    self.cursorRect = tmpRect;
}


+ (instancetype)cursorFrameWithRect:(CGRect)cursorRect
{
    ZGCursorFrame *cursorFrame = [[ZGCursorFrame alloc] init];
    cursorFrame.cursorRect = cursorRect;
    
    return cursorFrame;
}

@end
