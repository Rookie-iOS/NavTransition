//
//  Push.m
//  Nav
//
//  Created by Yanice on 2017/1/14.
//  Copyright © 2017年 Yanice. All rights reserved.
//

#import "Push.h"

@implementation Push

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    
    return 0.5f;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    
    UIView *containerView = [transitionContext containerView];
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    toVC.view.frame = CGRectMake(-300, 0, 300, 568);
    [containerView addSubview:toVC.view];
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        toVC.view.alpha = 1.0f;
        toVC.view.frame = [[UIScreen mainScreen] bounds];
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:finished];
    }];
    
}

@end
