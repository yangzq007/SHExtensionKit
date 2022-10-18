//
//  SHViewController.m
//  SHExtensionKit
//
//  Created by yangzq007 on 07/09/2021.
//  Copyright (c) 2021 yangzq007. All rights reserved.
//

#import "SHViewController.h"

@interface SHViewController ()

@end

@implementation SHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *arr = @[
        @{
            @"title":@"1",
            @"content":@(1)
        },
        @{
            @"title":@"2",
            @"content":@(2)
        },
        @{
            @"title":@"3",
            @"content":@(3)
        },
        @{
            @"title":@"4",
            @"content":@(4)
        },
        @{
            @"title":@"5",
            @"content":@(5)
        }
    ];
    NSMutableArray *des = [arr map:^id _Nullable(NSDictionary *  _Nonnull item, NSInteger index) {
        return [NSString stringWithFormat:@"index:%@ - title:%@ - content:%@",@(index) , item[@"title"], @([item[@"content"] integerValue]+index)];
    }];
    NSLog(@"%@", des);
    
    des = [arr map:^id _Nullable(NSDictionary *  _Nonnull item, NSInteger index) {
        if (index == 1 || index == 3) {
            return nil;
        }
        return [NSString stringWithFormat:@"index:%@ - title:%@ - content:%@",@(index) , item[@"title"], @([item[@"content"] integerValue]+index)];
    }];
    NSLog(@"%@", des);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
