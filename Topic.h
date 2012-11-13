//
//  Topic.h
//  BrowseOverflow
//
//  Created by Michael Grossheim on 11/3/12.
//
//

#import <Foundation/Foundation.h>

@interface Topic : NSObject



@property (readonly) NSString *name;
@property (readonly) NSString *tag;

-(id)initWithName:(NSString *)newName tag:newTag;
-(NSArray *)recentQuestions;

@end
