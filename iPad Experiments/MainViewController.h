//
//  MainViewController.h
//  iPad Experiments
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UIPopoverControllerDelegate>
{
	IBOutlet UIBarButtonItem *barItem;
}

-(IBAction)showPopover:(id)sender;

@end
