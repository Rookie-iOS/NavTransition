//
//  ViewController.m
//  Nav
//
//  Created by Yanice on 2017/1/14.
//  Copyright © 2017年 Yanice. All rights reserved.
//

#import "ViewController.h"

#import "Push.h"

#import "Pop.h"

#import "BViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor greenColor];
    
    self.navigationController.delegate = self;
}

- (IBAction)btnAction:(UIButton *)sender {
    
    BViewController *bvc = [[BViewController alloc] init];
    
    [self.navigationController pushViewController:bvc animated:YES];
    
}

- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC {

    if (operation==UINavigationControllerOperationPush) {
        
        return [[Push alloc] init];
    }else if (operation==UINavigationControllerOperationPop) {
        return [[Pop alloc] init];
    }
    
    return nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
