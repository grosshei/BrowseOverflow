//
// Created by grosshei on 11/27/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@class Person;


@interface Answer : NSObject

@property NSString *text;
@property Person *person;
@property NSInteger score;
@property BOOL accepted;

- (NSComparisonResult)compare:(Answer *)otherAnswer;


@end