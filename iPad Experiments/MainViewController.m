//
//  MainViewController.m
//  iPad Experiments
//
//  Created by Tom Hamming on 11/12/12.
//  Copyright (c) 2012 ePivot Solutions. All rights reserved.
//

#import "MainViewController.h"
#import "TestContentViewController.h"

@interface MainViewController ()
@property UIPopoverController *popController;
@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showPopover:(id)sender
{
	TestContentViewController *controller = [[TestContentViewController alloc]initWithNibName:@"TestContentViewController" bundle:[NSBundle mainBundle]];
	UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:controller];
	self.popController = [[UIPopoverController alloc]initWithContentViewController:nav];
	controller.popover = self.popController;
	
	[self.popController presentPopoverFromBarButtonItem:barItem permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}

-(void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController
{
	self.popController = nil;
}

@end
