//
//  NSArray+FF.m
//  Categary
//
//  Created by xiazer on 15/5/11.
//  Copyright (c) 2015年 xiazer. All rights reserved.
//

#import "NSArray+FF.h"

@implementation NSArray (FF)

+ (NSString *)convertToString:(NSArray *)array
{
    if (array == nil) {
        return nil;
    }
    NSUInteger length = [array count];
    __block NSMutableString *muString = [[NSMutableString alloc] initWithCapacity:length];
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
        if ([obj isKindOfClass:[NSString class]]) {
            [muString appendString:obj];
            if (idx != length - 1) {
                [muString appendString:@" "];
            }
        }
    }];

    return [muString copy];
}



+ (NSString *)convertToString:(NSArray *)array withSplitChar:(NSString *)splitChar
{
    if (array == nil) {
        return nil;
    }
    NSUInteger length = [array count];
    __block NSMutableString *muString = [[NSMutableString alloc] initWithCapacity:length];
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop){
        if ([obj isKindOfClass:[NSString class]]) {
            [muString appendString:obj];
            if (idx != length - 1) {
                [muString appendString:splitChar];
            }
        }
    }];
    return [muString copy];
    
}


@end
