//
//  Topic.m
//  BrowseOverflow
//
//  Created by Michael Grossheim on 11/3/12.
//
//

#import "Topic.h"

@implementation Topic

@synthesize name;

-(id)initWithName:(NSString *)newName{
    if(self = [super init]){
        name = [newName copy];
    }
    return self;
}

@end
