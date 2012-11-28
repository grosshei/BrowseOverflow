//
// Created by grosshei on 11/13/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Question.h"
#import "Answer.h"


@implementation Question

@synthesize date, title, score;

-(id)init{
    if(self = [super init]){
        answerSet = [[NSMutableSet alloc] init];
    }
    return self;
}

-(void)addAnswer:(Answer *)answer{
    [answerSet addObject:answer];
}

-(NSArray *)answers{
    return [[answerSet allObjects] sortedArrayUsingSelector:@selector(compare:)];
}

@end