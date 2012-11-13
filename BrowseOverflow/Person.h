//
// Created by grosshei on 11/13/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>


@interface Person : NSObject

@property NSString *name;
@property NSURL *avatarURL;

- (id)initWithName:(NSString *)aName avatarLocation:(NSString *)location;


@end