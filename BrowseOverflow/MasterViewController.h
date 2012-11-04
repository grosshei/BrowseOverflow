//
//  MasterViewController.h
//  BrowseOverflow
//
//  Created by Michael Grossheim on 11/3/12.
//
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
