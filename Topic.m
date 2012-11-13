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
    questions = [questions arrayByAddingObject: question];
}

-(NSArray *)recentQuestions{
    return questions;
}

@end
