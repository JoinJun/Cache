# usage
将 CacheController.h 、CacheController.m 加入工程

在需要缓存的地方导入头文件 CacheController.h 

提供方法如下：

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