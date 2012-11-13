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

-(void)setUp{
    topic = [[Topic alloc] initWithName:@"iPhone" tag:@"iphone"];
}

-(void)tearDown{
    topic = nil;
}

-(void) testThatTopicExists{
    STAssertNotNil(topic, @"Should be able to create a topic instance");
}

-(void) testThatTopicCanBeNamed{
    STAssertEqualObjects(topic.name, @"iPhone", @"The topic should have the name given");
}

-(void) testThatTopicHasATag{
    STAssertEqualObjects(topic.tag, @"iphone", @"Topics need to have tags");
}

@end
