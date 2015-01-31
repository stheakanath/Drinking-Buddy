//
//  Timer.h
//  Drinking Buddy
//
//  Created by Sony Theakanath on 1/31/15.
//  Copyright (c) 2015 Sony Theakanath. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Timer : NSObject {
    NSDate *start;
    NSDate *end;
}

- (void) startTimer;
- (void) stopTimer;
- (double) timeElapsedInSeconds;
- (double) timeElapsedInMilliseconds;
- (double) timeElapsedInMinutes;

@end
