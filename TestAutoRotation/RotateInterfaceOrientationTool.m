//
//  RotateInterfaceOrientationTool.m
//  TestAutoRotation
//
//  Created by DianShi on 19/07/2017.
//  Copyright © 2017 dzq. All rights reserved.
//

#import "RotateInterfaceOrientationTool.h"

@implementation RotateInterfaceOrientationTool

+ (void)interfaceOrientation:(UIInterfaceOrientation)orientation
{
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        SEL selector             = NSSelectorFromString(@"setOrientation:");
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
        [invocation setSelector:selector];
        [invocation setTarget:[UIDevice currentDevice]];
        int val                  = orientation;
        [invocation setArgument:&val atIndex:2];
        [invocation invoke];
    }
}

@end
