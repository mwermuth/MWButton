//
//  MWButton.h
//  nextr2
//
//  Created by Marcus on 18.07.13.
//  Copyright (c) 2013 nextr.info. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MWButton : UIButton{
    @private
        NSMutableDictionary *backgroundStates;
    @public
}

- (void) setBackgroundColor:(UIColor *) _backgroundColor forState:(UIControlState) _state;
- (UIColor*) backgroundColorForState:(UIControlState) _state;

@end
