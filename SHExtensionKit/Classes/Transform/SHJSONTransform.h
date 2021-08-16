//
//  SHJSONTransform.h
//  SHExtensionKit
//
//  Created by yzq on 2021/8/16.
//

#import <Foundation/Foundation.h>

@interface NSString (SHJSONTransform)

- (id)jsonObject;
- (NSMutableDictionary *)jsonDictionary;
- (NSMutableArray *)jsonArray;

@end
