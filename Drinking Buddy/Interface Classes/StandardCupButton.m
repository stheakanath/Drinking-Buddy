//
//  StandardCupButton.m
//  Drinking Buddy
//
//  Created by Sony Theakanath on 1/31/15.
//  Copyright (c) 2015 Sony Theakanath. All rights reserved.
//

#import "StandardCupButton.h"

@implementation StandardCupButton

- (id) init:(id)target selector:(SEL)sel withImage:(NSString*)imageLink  {
    //add code to init button
    //this class will handle the button clikc and pushing
    self = [UIButton buttonWithType:UIButtonTypeCustom];
    [self setBackgroundColor:[UIColor clearColor]];
    [self setBackgroundImage:[UIImage imageNamed:@"PredictButton"] forState:UIControlStateNormal];
    [self addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    UIImage *image = [UIImage imageNamed:imageLink];
    [self setFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width/2-(image.size.width/2), [[UIScreen mainScreen] bounds].size.height/2-(image.size.height/2), image.size.width, image.size.height)];
    return self;
}

@end
