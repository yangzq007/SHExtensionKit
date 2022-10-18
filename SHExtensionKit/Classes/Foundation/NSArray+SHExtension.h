//
//  NSArray+SHExtension.h
//  SHExtensionKit
//
//  Created by yzq on 2022/10/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef id _Nullable (^SHArrayMapBlock)(id item, NSInteger index);

@interface NSArray (SHExtension)

- (NSMutableArray *)map:(SHArrayMapBlock)block;

@end

NS_ASSUME_NONNULL_END
