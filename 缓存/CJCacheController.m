//
//  CacheController.m
//  缓存
//
//  Created by chenjun on 16/7/18.
//  Copyright © 2016年 cloudssky. All rights reserved.
//

#import "CJCacheController.h"

@implementation CJCacheController

+ (void)cacheWithDict:(NSDictionary *)dict forKey:(NSString *)key {
    NSArray *Rpaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *RdocPath = [Rpaths objectAtIndex:0];
    NSString *RmyFile = [RdocPath stringByAppendingPathComponent:@"systemInfoFile.plist"];
    NSMutableDictionary *Rdict = [[NSMutableDictionary alloc] initWithContentsOfFile:RmyFile];
    if (Rdict == nil) {
        Rdict = [NSMutableDictionary dictionary];
    }
    [Rdict setObject:dict forKey:key];
    [Rdict writeToFile:RmyFile atomically:YES];
}

+ (NSDictionary *)readCacheWithKey:(NSString *)key {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docPath = [paths objectAtIndex:0];
    NSString *myFile = [docPath stringByAppendingPathComponent:@"systemInfoFile.plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:myFile];
    NSDictionary *returnDict = [dict objectForKey:key];
    return returnDict;
}

+ (void)delegateCacheWithKey:(NSString *)key {
    NSArray *Rpaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *RdocPath = [Rpaths objectAtIndex:0];
    NSString *RmyFile = [RdocPath stringByAppendingPathComponent:@"systemInfoFile.plist"];
    NSMutableDictionary *Rdict = [[NSMutableDictionary alloc] initWithContentsOfFile:RmyFile];
    [Rdict removeObjectForKey:key];
    [Rdict writeToFile:RmyFile atomically:YES];
}

@end
