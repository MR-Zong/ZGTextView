//
//  ZGTextView.m
//  ZGTextView
//
//  Created by 徐宗根 on 16/1/26.
//  Copyright © 2016年 XuZonggen. All rights reserved.
//

#import "ZGTextView.h"

@interface ZGTextView ()
@end

@implementation ZGTextView


/* Methods for manipulating text. */
- (nullable NSString *)textInRange:(UITextRange *)range
{
    return @"";
}

- (void)replaceRange:(UITextRange *)range withText:(NSString *)text
{
    
}

- (void)setMarkedText:(nullable NSString *)markedText selectedRange:(NSRange)selectedRange
{
    
}

- (void)unmarkText
{
    
}

/* Methods for creating ranges and positions. */
- (nullable UITextRange *)textRangeFromPosition:(UITextPosition *)fromPosition toPosition:(UITextPosition *)toPosition
{
    return nil;
}


- (nullable UITextPosition *)positionFromPosition:(UITextPosition *)position offset:(NSInteger)offset
{
    return nil;
}

- (nullable UITextPosition *)positionFromPosition:(UITextPosition *)position inDirection:(UITextLayoutDirection)direction offset:(NSInteger)offset
{
    return nil;
}

/* Simple evaluation of positions */
- (NSComparisonResult)comparePosition:(UITextPosition *)position toPosition:(UITextPosition *)other
{
    return nil;
}

- (NSInteger)offsetFromPosition:(UITextPosition *)from toPosition:(UITextPosition *)toPosition
{
    return nil;
}

/* Layout questions. */
- (nullable UITextPosition *)positionWithinRange:(UITextRange *)range farthestInDirection:(UITextLayoutDirection)direction
{
    return nil;
}

- (nullable UITextRange *)characterRangeByExtendingPosition:(UITextPosition *)position inDirection:(UITextLayoutDirection)direction
{
    return nil;
}

/* Writing direction */
- (UITextWritingDirection)baseWritingDirectionForPosition:(UITextPosition *)position inDirection:(UITextStorageDirection)direction
{
    return nil;
}

- (void)setBaseWritingDirection:(UITextWritingDirection)writingDirection forRange:(UITextRange *)range
{
    
}

/* Geometry used to provide, for example, a correction rect. */
- (CGRect)firstRectForRange:(UITextRange *)range
{
    return CGRectMake(0, 0, 1, 5);
}

- (CGRect)caretRectForPosition:(UITextPosition *)position
{
    return CGRectMake(0, 0, 1, 5);
}


- (NSArray *)selectionRectsForRange:(UITextRange *)range NS_AVAILABLE_IOS(6_0)
{
    return nil;
}



/* Hit testing. */
- (nullable UITextPosition *)closestPositionToPoint:(CGPoint)point
{
    return nil;
}



- (nullable UITextPosition *)closestPositionToPoint:(CGPoint)point withinRange:(UITextRange *)range
{
    return nil;
}


- (nullable UITextRange *)characterRangeAtPoint:(CGPoint)point
{
    return nil;
}


#pragma mark - <UIkeyInput>


#pragma mark -

- (CGRect)rectForTextWithInset:(CGFloat)inset {
    return CGRectInset(self.bounds, inset, inset);
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self becomeFirstResponder];
}


@end
