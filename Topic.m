//
//  Topic.m
//  BrowseOverflow
//
//  Created by Michael Grossheim on 11/3/12.
//
//

#import "Topic.h"

@implementation Topic

@synthesize name, tag;

-(id)initWithName:(NSString *)newName tag:newTag{
    if(self = [super init]){
        name = [newName copy];
        tag = [newTag copy];
    }
    return self;
}

-(NSArray *)recentQuestions{
    return [NSArray array];
}

@end
