//
// Created by grosshei on 11/13/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@class Answer;


@interface Question : NSObject{
    NSMutableSet *answerSet;
}

@property NSDate *date;
@property (copy) NSString *title;
@property NSInteger score;
@property (readonly) NSArray *answers;

- (void)addAnswer:(Answer *)answer;


@end