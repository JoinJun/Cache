//
//  CacheController.h
//  缓存
//
//  Created by chenjun on 16/7/18.
//  Copyright © 2016年 cloudssky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CJCacheController : NSObject
/**
 *  缓存信息
 *
 *  @param dict 缓存内容
 *  @param key  关键字
 */
+ (void)cacheWithDict:(NSDictionary *)dict forKey:(NSString *)key;
/**
 *  读取缓存信息
 *
 *  @param key 关键字
 */
+ (NSDictionary *)readCacheWithKey:(NSString *)key;
/**
 *  删除缓存
 *
 *  @param key 关键字
 */
+ (void)delegateCacheWithKey:(NSString *)key;

@end
