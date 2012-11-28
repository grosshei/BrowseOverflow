//
//  QuestionCreationTests.m
//  BrowseOverflow
//
//  Created by Mike Grossheim on 11/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "QuestionCreationTests.h"
#import "StackOverflowManager.h"
#import "MockStackOverflowManagerDelegate.h"

@implementation QuestionCreationTests

-(void)setUp
{
    mgr = [[StackOverflowManager alloc] init];
}

-(void)tearDown
{
    mgr = nil;
}

-(void)testNonConformingObjectCannotBeDelegate{
    STAssertThrows(mgr.delegate = (id<StackOverflowManagerDelegate>)[NSNull null], @"NSNull should not be used as delegate");
}

-(void)testConformingObjectCanBeDelegate{
    id <StackOverflowManagerDelegate> delegate = [[MockStackOverflowManagerDelegate alloc] init];
    STAssertNoThrow(mgr.delegate = delegate, @"Object conforming to delegate protocol should be used");
}

-(void)testManagerAcceptsNilAsADelegate{
    STAssertNoThrow(mgr.delegate = nil, @"It should be acceptable to use nil as an object's delegate");
}

@end
