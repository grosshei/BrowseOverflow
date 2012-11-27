//
// Created by grosshei on 11/27/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "Answer.h"
#import "Person.h"


@implementation Answer

@synthesize text, person, score, accepted;

-(NSComparisonResult)compare:(Answer *)otherAnswer{
    if (accepted && !(otherAnswer.accepted)){
        return NSOrderedAscending;
    } else if (!accepted && otherAnswer.accepted){
        return NSOrderedDescending;
    }

    if(score > otherAnswer.score){
        return NSOrderedAscending;
    } else if (score < otherAnswer.score){
        return NSOrderedDescending;
    }else{
        return NSOrderedSame;
    }
}

@end