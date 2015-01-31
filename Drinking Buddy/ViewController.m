//
//  ViewController.m
//  Drinking Buddy
//
//  Created by Sony Theakanath on 1/30/15.
//  Copyright (c) 2015 Sony Theakanath. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, retain) StandardCupButton *addAlc;
@property (nonatomic, retain) WazeBackground *deltaBackground;
@property (nonatomic, retain) NSDictionary *dictContents;
@property (nonatomic, retain) DataCalculator *tracker;
@property (nonatomic, retain) Timer *timer;
@property BOOL *didSelectOnLaunch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.deltaBackground = [[WazeBackground alloc] init];
    [self.view addSubview:self.deltaBackground];
    self.addAlc = [[StandardCupButton alloc] init:self selector:@selector(didClickButton:) withImage:@"ShotGlass"];
    [self.view addSubview:self.addAlc];
    self.timer = [[Timer alloc] init];
    self.tracker = [[DataCalculator alloc] init];
    //Setting Up Contents of 
}

- (IBAction)didClickButton:(id)sender {
    if (!self.didSelectOnLaunch) {
        [self.timer startTimer];
    } else {
        double time = [self.timer timeElapsedInSeconds];
        //do something with time
    }
}
@end
