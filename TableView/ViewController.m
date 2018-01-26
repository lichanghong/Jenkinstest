//
//  ViewController.m
//  TableView
//
//  Created by lichanghong on 21/01/2018.
//  Copyright © 2018 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
 @end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    NSLog(@"%s",dispatch_queue_get_label(DISPATCH_CURRENT_QUEUE_LABEL));
//    dispatch_queue_t queue = dispatch_queue_create("eheheh", 0);
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{//异步串行执行
        NSLog(@"%s",dispatch_queue_get_label(DISPATCH_CURRENT_QUEUE_LABEL));

    });
//    dispatch_async(queue, ^{//异步串行执行
//        NSLog(@"2");    });
//    dispatch_async(queue, ^{//异步串行执行
//        NSLog(@"3");    });
//    dispatch_async(queue, ^{//异步串行执行
//        NSLog(@"4");    });
//    dispatch_async(queue, ^{//异步串行执行
//        NSLog(@"5");    });
//    dispatch_async(queue, ^{//异步串行执行
//        NSLog(@"6");    });
    NSLog(@"finish");
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
