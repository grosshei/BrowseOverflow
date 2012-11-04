//
//  DetailViewController.h
//  BrowseOverflow
//
//  Created by Michael Grossheim on 11/3/12.
//
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
