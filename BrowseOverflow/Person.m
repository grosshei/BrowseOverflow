//
// Created by grosshei on 11/13/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Person.h"


@implementation Person
@synthesize name, avatarURL;

-(id)initWithName:(NSString *)aName avatarLocation:(NSString *)location{
    if(self = [super init]){
        name = [aName copy];
        avatarURL = [[NSURL alloc] initWithString:location];
    }
    return self;
}

@end