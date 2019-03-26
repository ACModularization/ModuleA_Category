//
//  ACMediator+ModuleA.m
//  ModuleACategory
//
//  Created by 张亚浩 on 2019/3/26.
//  Copyright © 2019 Ace. All rights reserved.
//

#import "ACMediator+ModuleA.h"

static NSString const *kParamsCallback = @"kParamsCallback";

@implementation ACMediator (ModuleA)

- (UIViewController *)moduleA_firstViewControllerWithCallback:(void (^)(NSString *))callback {
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[kParamsCallback] = callback;
    return [self performTarget:@"ModuleA" action:@"Category_ViewController" params:params shouldCacheTarget:NO];
}

@end
