##MWButton

Implements the functionality to set the Background Color of a UIButton in dependency to the State.

###Usage

Just create a button as always.

```MWButton *button = [MWButton buttonWithType:UIButtonTypeCustom];```

and then set the Colors for the corresponding states:

    [button setBackgroundColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [button setBackgroundColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
