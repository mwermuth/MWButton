//
//  MWButton.m
//  nextr2
//
//  Created by Marcus on 18.07.13.
//  Copyright (c) 2013 nextr.info. All rights reserved.
//

#import "MWButton.h"

@implementation MWButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void) setBackgroundColor:(UIColor *) _backgroundColor forState:(UIControlState) _state {
    if (backgroundStates == nil)
        backgroundStates = [[NSMutableDictionary alloc] init];
    
    [backgroundStates setObject:_backgroundColor forKey:[NSNumber numberWithInt:_state]];
    
    if (self.backgroundColor == nil)
        [self setBackgroundColor:_backgroundColor];
}

- (UIColor*) backgroundColorForState:(UIControlState) _state {
    return [backgroundStates objectForKey:[NSNumber numberWithInt:_state]];
}

#pragma mark -
#pragma mark Touches

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	[super touchesBegan:touches withEvent:event];
    
    UIColor *highlightedColor = [backgroundStates objectForKey:[NSNumber numberWithInt:UIControlStateHighlighted]];
    if (highlightedColor) {

        self.backgroundColor = highlightedColor;
    }
}

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
	[super touchesCancelled:touches withEvent:event];
    
    UIColor *normalColor = [backgroundStates objectForKey:[NSNumber numberWithInt:UIControlStateNormal]];
    if (normalColor) {
//        CATransition *animation = [CATransition animation];
//        [animation setType:kCATransitionFade];
//        [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
//        [self.layer addAnimation:animation forKey:@"EaseOut"];
        self.backgroundColor = normalColor;
    }
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];
    
    UIColor *selectedColor = [backgroundStates objectForKey:[NSNumber numberWithInt:UIControlStateSelected]];
    if (selectedColor && (![self.backgroundColor isEqual:selectedColor])) {
//        CATransition *animation = [CATransition animation];
//        [animation setType:kCATransitionFade];
//        [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
//        [self.layer addAnimation:animation forKey:@"EaseOut"];
        self.backgroundColor = selectedColor;
    }
    else{
        self.backgroundColor = [backgroundStates objectForKey:[NSNumber numberWithInt:UIControlStateNormal]];
    }
}


@end
