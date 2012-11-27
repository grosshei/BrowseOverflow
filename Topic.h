//
//  Topic.h
//  BrowseOverflow
//
//  Created by Michael Grossheim on 11/3/12.
//
//

#import <Foundation/Foundation.h>

@class Question;

@interface Topic : NSObject {
    NSArray *questions;
}

@property (readonly) NSString *name;
@property (readonly) NSString *tag;

-(id)initWithName:(NSString *)newName tag:newTag;

- (void)addQuestion:(Question *)question;

-(NSArray *)recentQuestions;

@end
