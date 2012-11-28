//
//  StackOverflowManager.h
//  BrowseOverflow
//
//  Created by Mike Grossheim on 11/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StackOverflowManagerDelegate.h"

@interface StackOverflowManager : NSObject

@property (weak, nonatomic) id<StackOverflowManagerDelegate> delegate;

@end
