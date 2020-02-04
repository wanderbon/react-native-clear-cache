#import "ClearCache.h"

@implementation ClearCache

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(clearAppCache:(RCTResponseSenderBlock *)callback)
{
    [self clearFile:callback];
}

- (void)clearFile:(RCTResponseSenderBlock)callback
{
    NSString * cachPath = [NSSearchPathForDirectoriesInDomains (NSCachesDirectory, NSUserDomainMask, YES ) firstObject];
    
    NSArray * files = [[NSFileManager defaultManager]subpathsAtPath:cachPath];
    
    NSLog ( @"cachpath = %@" , cachPath);
    
    for ( NSString * p in files) {
        NSError * error = nil ;
        NSString * path = [cachPath stringByAppendingPathComponent :p];
        if ([[ NSFileManager defaultManager ] fileExistsAtPath :path]) {
            [[ NSFileManager defaultManager ] removeItemAtPath :path error :&error];
        }
    }
    
    callback(@[[NSNull null]]);
    
}

@end
