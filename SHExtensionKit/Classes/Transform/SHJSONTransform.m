//
//  SHJSONTransform.m
//  SHExtensionKit
//
//  Created by yzq on 2021/8/16.
//

#import "SHJSONTransform.h"

@implementation NSString (SHJSONTransform)

- (id)jsonObject
{
    if (self.length < 1) {
        return nil;
    }
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error;
    id object = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingFragmentsAllowed error:&error];
    if (error) {
        return nil;
    }
    return object;
}

- (NSMutableDictionary *)jsonDictionary
{
    NSDictionary *dic = self.jsonObject;
    if (dic == nil || ![dic isKindOfClass:[NSDictionary class]]) {
        return nil;
    }
    return [NSMutableDictionary dictionaryWithDictionary:dic];
}

- (NSMutableArray *)jsonArray
{
    NSArray *arr = self.jsonObject;
    if (arr == nil || ![arr isKindOfClass:[NSArray class]]) {
        return nil;
    }
    return [NSMutableArray arrayWithArray:arr];
}

@end
