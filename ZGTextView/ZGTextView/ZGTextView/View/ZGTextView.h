//
//  ZGTextView.h
//  ZGTextView
//
//  Created by 徐宗根 on 16/1/26.
//  Copyright © 2016年 XuZonggen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZGTextView : UIScrollView <UITextInput>


/* Text may have a selection, either zero-length (a caret) or ranged.  Editing operations are
 * always performed on the text from this selection.  nil corresponds to no selection. */

@property (nullable, readwrite, copy) UITextRange *selectedTextRange;

/* If text can be selected, it can be marked. Marked text represents provisionally
 * inserted text that has yet to be confirmed by the user.  It requires unique visual
 * treatment in its display.  If there is any marked text, the selection, whether a
 * caret or an extended range, always resides witihin.
 *
 * Setting marked text either replaces the existing marked text or, if none is present,
 * inserts it from the current selection. */

@property (nullable, nonatomic, readonly) UITextRange *markedTextRange; // Nil if no marked text.
@property (nullable, nonatomic, copy) NSDictionary *markedTextStyle; // Describes how the marked text should be drawn.

/* The end and beginning of the the text document. */
@property (nonatomic, readonly) UITextPosition *beginningOfDocument;
@property (nonatomic, readonly) UITextPosition *endOfDocument;

/* A system-provied input delegate is assigned when the system is interested in input changes. */
@property (nullable, nonatomic, weak) id <UITextInputDelegate> inputDelegate;

/* A tokenizer must be provided to inform the text input system about text units of varying granularity. */
@property (nonatomic, readonly) id <UITextInputTokenizer> tokenizer;




@end
