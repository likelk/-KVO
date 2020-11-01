//
//  ViewController.m
//  Test自定义KVC
//
//  Created by ^_^ on 2020/10/29.
//  Copyright © 2020 ^_^. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self highOrderKVC];
}

//KVC实现高阶消息传递
- (void)highOrderKVC{
    NSArray *arrStr = @[@"teacher", @"person", @"son"];
    NSArray *newArrStr = [arrStr valueForKey:@"capitalizedString"];
    for (NSString *str in newArrStr) {
        NSLog(@"%@", str);
    }
    NSArray *newArrStrLength = [newArrStr valueForKeyPath:@"capitalizedString.length"];
    for (NSNumber *length in newArrStrLength) {
        NSLog(@"%ld", (long)length.integerValue);
    }
}

@end
