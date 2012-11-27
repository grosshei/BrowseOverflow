//
//  TopicTests.m
//  BrowseOverflow
//
//  Created by Michael Grossheim on 11/3/12.
//
//

#import "TopicTests.h"
#import "Topic.h"
#import "Question.h"

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

-(void)testForAListOfQuestions{
    STAssertTrue([[topic recentQuestions] isKindOfClass:[NSArray class]],
                 @"Topics should provide a list of recent questions");
}

-(void)testQuestionsAreListedChronologically{
    Question *q1 = [[Question alloc] init];
    q1.date = [NSDate distantPast];

    Question *q2 = [[Question alloc] init];
    q2.date = [NSDate distantFuture];

    [topic addQuestion:q1];
    [topic addQuestion:q2];

    NSArray *questions = [topic recentQuestions];

    Question *listedFirst = [questions objectAtIndex:0];
    Question *listedSecond = [questions objectAtIndex:1];

    STAssertEqualObjects([listedFirst.date laterDate:listedSecond.date], listedFirst.date, @"The later question should appear first in the list");

}

-(void)testLimitOfTwentyQuestions{
    Question *q1 = [[Question alloc] init];
    for (NSUInteger i = 0; i < 25; i++){
        [topic addQuestion:q1];
    }
    STAssertTrue([[topic recentQuestions] count] < 21, @"There should never be more than twenty quesetions");
}

@end
