//
//  WazeBackground.m
//  Drinking Buddy
//
//  Created by Sony Theakanath on 1/31/15.
//  Copyright (c) 2015 Sony Theakanath. All rights reserved.
//

#import "WazeBackground.h"

@implementation WazeBackground

- (id) init {
    self = [super initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    //WazeBackground will handle the color change depending on the amount of alcohol taken.
    
    return self;
}

- (void) changeColor: (UIColor*) color {
    CATransition *transition = [CATransition animation];
    transition.duration = 0.3f;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionFade;
    [self.layer addAnimation:transition forKey:nil];
    [self setBackgroundColor:color];
}

@end
