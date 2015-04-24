//
//  AppDelegate.m
//  NumberProblems-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

int multiplies = 8;
int divisor = 6;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    [self iterateCount:4];
    
    return YES;
}
-(void)iterateCount:(int)decreasingNumber {
    if (decreasingNumber > 0){
        NSLog(@"Iterate %d", decreasingNumber);
        [self iterateCount:--decreasingNumber];
        int newMultipliedNumber=[self multiplied:decreasingNumber];
        
        NSLog(@"Multiplied %d by %d to be %d", decreasingNumber, multiplies, newMultipliedNumber);
        [self divided:newMultipliedNumber];
        float dividedNumber = [self divided:newMultipliedNumber];
        NSLog(@"Divided %d by %d to be %f", newMultipliedNumber, divisor, dividedNumber);
        
    } else {
        return;
    }
    
}
-(int)multiplied:(int)multipliedNumber {
    return multiplies * multipliedNumber;
    
}
-(float)divided:(float)dividedNumber {
    return dividedNumber / divisor;
}
@end
