//
//  NSDictionary+Objects.h
//  NSDictionary+Objects
//
//  Created by Pau on 28/04/2016.
//  Copyright © 2016 Pablo Alejandro. All rights reserved.
//

#import "NSDictionary+Utils.h"

@implementation NSDictionary(Utils)

- (NSNumber *)numberForKey:(NSString *)key
{
    return [[self objectForKey:key] isKindOfClass:[NSNull class]] ? nil : [[self objectForKey:key] isKindOfClass:[NSNumber class]] ? (NSNumber *)[self objectForKey:key] : nil;
}

- (NSString *)stringForKey:(NSString *)key
{
    return [[self objectForKey:key] isKindOfClass:[NSNull class]] ? nil : [[self objectForKey:key] isKindOfClass:[NSString class]] ? (NSString *)[self objectForKey:key] : nil;
}

- (NSArray *)arrayForKey:(NSString *)key
{
    return [[self objectForKey:key] isKindOfClass:[NSNull class]] ? nil : [[self objectForKey:key] isKindOfClass:[NSArray class]] ? (NSArray *)[self objectForKey:key] : nil;
}

- (NSSet *)setForKey:(NSString *)key
{
    return [[self objectForKey:key] isKindOfClass:[NSNull class]] ? nil : [[self objectForKey:key] isKindOfClass:[NSSet class]] ? (NSSet *)[self objectForKey:key] : nil;
}

- (NSDictionary *)dictionaryForKey:(NSString *)key
{
    return [[self objectForKey:key] isKindOfClass:[NSNull class]] ? nil : [[self objectForKey:key] isKindOfClass:[NSDictionary class]] ? (NSDictionary *)[self objectForKey:key] : nil;
}

- (BOOL)boolForKey:(NSString *)key
{
    return [[self objectForKey:key] isKindOfClass:[NSNull class]] ? FALSE : [[self objectForKey:key] isKindOfClass:[NSNumber class]] ? [[self objectForKey:key] boolValue] : FALSE;
}

- (NSNumber *)numberForKey:(NSString *)key orDefault:(NSNumber *)value
{
    return [self numberForKey:key] ? [self numberForKey:key] : value;
}

- (NSString *)stringForKey:(NSString *)key orDefault:(NSString *)value
{
    return [self stringForKey:key] ? [self stringForKey:key] : value;
}

- (NSArray *)arrayForKey:(NSString *)key orDefault:(NSArray *)value
{
     return [self arrayForKey:key] ? [self arrayForKey:key] : value;
}

- (NSDictionary *)dictionaryForKey:(NSString *)key orDefault:(NSDictionary *)value
{
     return [self dictionaryForKey:key] ? [self dictionaryForKey:key] : value;
}

- (BOOL)boolForKey:(NSString *)key orDefault:(BOOL)value
{
    return [self boolForKey:key] ? [self boolForKey:key] : value;
}

@end
