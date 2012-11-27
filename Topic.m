//
//  Topic.m
//  BrowseOverflow
//
//  Created by Michael Grossheim on 11/3/12.
//
//

#import "Topic.h"
#import "Question.h"

@implementation Topic

@synthesize name, tag;

-(id)initWithName:(NSString *)newName tag:newTag{
    if(self = [super init]){
        name = [newName copy];
        tag = [newTag copy];
        questions = [NSArray array];
    }
    return self;
}

-(void)addQuestion: (Question *)question{
    NSArray *newQuestions = [questions arrayByAddingObject: question];
    if ([newQuestions count] > 20){
        newQuestions = [self sortQuestionsLatestFirst:newQuestions];
        newQuestions = [newQuestions subarrayWithRange:NSMakeRange(0, 20)];
    }
    questions = newQuestions;
}

-(NSArray *)sortQuestionsLatestFirst:questionList{
    return [questionList sortedArrayUsingComparator:^(id obj1, id obj2){
        Question *q1 = (Question *)obj1;
        Question *q2 = (Question *)obj2;

        return [q2.date compare:q1.date];
    }];
}

-(NSArray *)recentQuestions{
    return [self sortQuestionsLatestFirst:questions];
}

@end
