//
//  NSArray+SHExtension.m
//  SHExtensionKit
//
//  Created by yzq on 2022/10/18.
//

#import "NSArray+SHExtension.h"

@implementation NSArray (SHExtension)

- (NSMutableArray *)map:(SHArrayMapBlock)block
{
    if (block == nil) {
        return nil;
    }
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:self.count];
    for (NSInteger i = 0; i < self.count; i++) {
        id des = block([self objectAtIndex:i], i);
        if (des) {
            [arr addObject:des];
        }
    }
    return arr;
}

@end
