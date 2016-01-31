//
//  ViewController.m
//  ZGTextView
//
//  Created by 徐宗根 on 16/1/26.
//  Copyright © 2016年 XuZonggen. All rights reserved.
//

#import "ViewController.h"
#import "ZGTextView.h"
#import "ZGSimpleTextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    ZGSimpleTextView *simpleTextView = [[ZGSimpleTextView alloc] init];
    
    simpleTextView.frame = CGRectMake(100, 100, 100, 100);
    simpleTextView.backgroundColor = [UIColor redColor];
    [self.view addSubview:simpleTextView];

}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
