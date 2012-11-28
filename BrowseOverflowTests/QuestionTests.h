//
//  QuestionTests.h
//  BrowseOverflow
//
//  Created by Mike Grossheim on 11/13/12.
//
//

#import <SenTestingKit/SenTestingKit.h>

@class Question;
@class Answer;

@interface QuestionTests : SenTestCase
{
    Question *question;
    Answer *lowScore;
    Answer *highScore;
}

@end
