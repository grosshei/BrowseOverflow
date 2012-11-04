//
//  TopicTests.m
//  BrowseOverflow
//
//  Created by Michael Grossheim on 11/3/12.
//
//

#import "TopicTests.h"
#import "Topic.h"

@implementation TopicTests

-(void) testThatTopicExists{
    Topic *newTopic = [[Topic alloc] init];
    STAssertNotNil(newTopic, @"Should be able to create a topic instance");
}

@end
