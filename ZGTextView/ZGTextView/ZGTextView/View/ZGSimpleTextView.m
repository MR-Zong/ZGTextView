//
//  ZGSimpleTextView.m
//  ZGTextView
//
//  Created by 徐宗根 on 16/1/26.
//  Copyright © 2016年 XuZonggen. All rights reserved.
//

#import "ZGSimpleTextView.h"

@implementation ZGSimpleTextView

@synthesize textColor;
@synthesize textStore;
@synthesize font;

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.font = [UIFont systemFontOfSize:18];
        self.textStore = [[NSMutableString alloc] init];
        self.textColor = [UIColor whiteColor];
    }
    
    return self;
}

#pragma mark - <UIKeyInput>
- (BOOL)hasText
{
    if (self.textStore.length > 0) {
        return YES;
    }
    return NO;
}

- (void)insertText:(NSString *)text
{
    NSLog(@"text %@",text);
    [self.textStore appendString:text];
    [self setNeedsDisplay];
}


- (void)deleteBackward
{
    if (self.textStore.length > 0) {
        [self.textStore deleteCharactersInRange:NSMakeRange(self.textStore.length - 1, 1)];
        [self setNeedsDisplay];
    }
}


#pragma mark -
- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self becomeFirstResponder];
}

- (void)drawRect:(CGRect)rect
{
    [self.textColor set];
    [self.textStore drawInRect:self.bounds withAttributes:@{NSFontAttributeName : self.font,
                                                            NSForegroundColorAttributeName : self.textColor}];
}

@end
