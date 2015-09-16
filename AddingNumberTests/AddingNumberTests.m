//
//  AddingNumberTests.m
//  AddingNumberTests
//
//  Created by Ido Franindo on 9/16/15.
//  Copyright (c) 2015 Ido Franindo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "RSAddition.h"

@interface AddingNumberTests : XCTestCase

@end

@implementation AddingNumberTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

//- (void)testExample {
//    // This is an example of a functional test case.
//    XCTAssert(YES, @"Pass");
//}
//
//
//
//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

- (void)testAdditionClassExists {
    RSAddition *addition = [[RSAddition alloc] init];
    XCTAssertNotNil(addition, @"RSAddition class exist");
}

- (void)testAddTwoPlusTwo {
    RSAddition *addition = [[RSAddition alloc] init];
    NSInteger result = [addition addNumberOne:2 withNumberTwo:2];
    XCTAssertEqual(result, 4, @"Addition of 2 + 2 is 4");
}

- (void)testAddTwoPlusSeven {
    RSAddition *addition = [[RSAddition alloc] init];
    NSInteger result = [addition addNumberOne:2 withNumberTwo:7];
    XCTAssertEqual(result, 9, @"Addition of 2 + 7 is 9");
}

@end

