//
//  ViewController.m
//  缓存
//
//  Created by chenjun on 16/7/18.
//  Copyright © 2016年 cloudssky. All rights reserved.
//

#import "ViewController.h"
#import "CJCacheController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *ddd = [CJCacheController readCacheWithKey:@"asd"];
    NSLog(@"%@", ddd);
    if (ddd == nil) {
        NSLog(@"空");
    } else {
        NSLog(@"不空");
    }
    NSDictionary *dict = @{@"ASD":@"asd"};
    [CJCacheController cacheWithDict:dict forKey:@"first"];
    NSDictionary *cacheDict = [CJCacheController readCacheWithKey:@"first"];
    NSLog(@"%@", cacheDict);
    [CJCacheController delegateCacheWithKey:@"first"];
    NSDictionary *caDict = [CJCacheController readCacheWithKey:@"first"];
    NSLog(@"%@", caDict);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
