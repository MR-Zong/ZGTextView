//
//  ZGSimpleTextView.m
//  ZGTextView
//
//  Created by 徐宗根 on 16/1/26.
//  Copyright © 2016年 XuZonggen. All rights reserved.
//

#import "ZGSimpleTextView.h"
#import "ZGCursorFrame.h"

@interface ZGSimpleTextView ()

@property (nonatomic, assign) NSInteger displayLinkCount;
@property (nonatomic, assign) BOOL cursorHidden;
@property (nonatomic, strong) ZGCursorFrame *cursorFrame;
@property (nonatomic, assign) NSUInteger cursorSelectedIndex;

@end

@implementation ZGSimpleTextView

@synthesize textColor;
@synthesize textStore;
@synthesize font;

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.font = [UIFont systemFontOfSize:15];
        self.textStore = [[NSMutableString alloc] init];
        self.textColor = [UIColor whiteColor];
        
        // cursor
        self.cursorFrame = [ZGCursorFrame cursorFrameWithRect:CGRectMake(5, 3, 1, self.font.lineHeight)];
        CADisplayLink *displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(onDisplayLink:)];
        [displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    }
    
    return self;
}

#pragma mark - onDisplayLink
- (void)onDisplayLink:(CADisplayLink *)displayLink
{
    if (self.displayLinkCount == 30) {
        [self setNeedsDisplay];
        self.displayLinkCount = 0;
    }
    self.displayLinkCount++;
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
    [self.textStore insertString:text atIndex:self.cursorSelectedIndex];
    self.cursorSelectedIndex += text.length;
    self.cursorFrame.x += [text sizeWithAttributes:@{NSFontAttributeName : self.font}].width;
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
    // cursor
    self.cursorHidden = !self.cursorHidden;
    if (self.cursorHidden == NO) {
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextFillRect(context, self.cursorFrame.cursorRect);
    }
}

@end
