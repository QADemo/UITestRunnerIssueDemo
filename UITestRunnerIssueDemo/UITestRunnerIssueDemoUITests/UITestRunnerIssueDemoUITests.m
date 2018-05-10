//
//  UITestRunnerIssueDemoUITests.m
//  UITestRunnerIssueDemoUITests
//
//  Created by Kjuly on 10/5/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface UITestRunnerIssueDemoUITests : XCTestCase

@end

@implementation UITestRunnerIssueDemoUITests {
  XCUIApplication *_app;
}

- (void)setUp
{
  [super setUp];
  
  // Put setup code here. This method is called before the invocation of each test method in the class.
  
  // In UI tests it is usually best to stop immediately when a failure occurs.
  self.continueAfterFailure = NO;
  // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
  [(_app = [[XCUIApplication alloc] init]) launch];
  
  // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown
{
  // Put teardown code here. This method is called after the invocation of each test method in the class.
  [super tearDown];
}

- (void)testExample
{
  XCUIScreenshot *screenshot = [_app screenshot];
  UIImageWriteToSavedPhotosAlbum(screenshot.image, nil, nil, nil);
}

@end
