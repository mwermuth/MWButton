//
//  MWButton.h
//  mwermut
//
//  Created by Marcus on 18.07.13.
//  Copyright (c) 2013 mwermuth.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MWButton : UIButton{
    NSMutableDictionary *backgroundStates;
}

- (void) setBackgroundColor:(UIColor *) _backgroundColor forState:(UIControlState) _state;
- (UIColor*) backgroundColorForState:(UIControlState) _state;

@end
