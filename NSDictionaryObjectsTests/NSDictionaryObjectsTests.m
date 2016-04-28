//
//  NSDictionaryObjectsTests.m
//  NSDictionaryObjectsTests
//
//  Created by Pau on 28/04/2016.
//  Copyright © 2016 Pablo Alejandro. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSDictionary+Utils.h"

@interface NSDictionaryObjectsTests : XCTestCase

@end

@implementation NSDictionaryObjectsTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testLibrary
{
    NSDictionary * dictionary = @{
                                  @"key_0" : @"abc",
                                  @"key_1" : @123,
                                  @"key_2" : [NSSet setWithObjects:@"1", @2, nil],
                                  @"key_3" : [NSNumber numberWithBool:FALSE],
                                  @"key_4" : @[@"1", @2, @{@"key":@"3"}],
                                  @"key_5" : @{@"key":@"value"}
                                  };
    
    NSAssert([[dictionary stringForKey:@"key_0"] isEqualToString:@"abc"], @"key_0 must be 'abc'!");
    NSAssert([dictionary stringForKey:@"key_0"] != nil, @"key_0 can't be nil!");
    NSAssert([[dictionary numberForKey:@"key_1"] isKindOfClass:[NSNumber class]], @"key_0 must be a NSNumber!");
    NSAssert([[dictionary setForKey:@"key_2"] isKindOfClass:[NSSet class]], @"key_0 must be a NSSet!");
    NSAssert([dictionary boolForKey:@"key_3"] == FALSE, @"key_0 must be false!");
    NSAssert([[dictionary arrayForKey:@"key_4"] isKindOfClass:[NSArray class]], @"key_0 must be a NSArray!");
    NSAssert([[dictionary dictionaryForKey:@"key_5"] isKindOfClass:[NSDictionary class]], @"key_0 must be a NSDictionary!");
}

@end
