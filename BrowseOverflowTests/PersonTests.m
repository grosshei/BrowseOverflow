//
//  PersonTests.m
//  BrowseOverflow
//
//  Created by Mike Grossheim on 11/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PersonTests.h"
#import "Person.h"

@implementation PersonTests

-(void)setUp
{
    person = [[Person alloc] initWithName:@"Graham Lee" avatarLocation:@"http://example.com/avatar.png"];
}

-(void)tearDown{
    person = nil;
}

-(void)testThatPersonHasTheRightName{
    STAssertEqualObjects(person.name, @"Graham Lee", @"expectxing a person to provide its name");
}

-(void)testThatPersonHasAnAvatarURL{
    NSURL *url = person.avatarURL;
    STAssertEqualObjects([url absoluteString], @"http://example.com/avatar.png",
    @"The Person's avatar should be represented by a URL");
}

@end
