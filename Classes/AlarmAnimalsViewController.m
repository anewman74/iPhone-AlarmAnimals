    //
//  AlarmAnimalsViewController.m
//  AlarmAnimals
//
//  Created by Andrew Newman on 5/8/11.
//  Copyright 2011 LightenUp! Enterprises, LLC. All rights reserved.
//

#import "AlarmAnimalsViewController.h"
#import "AlarmAnimalsAppDelegate.h"
#import "ChooseTimeViewController.h"

@implementation AlarmAnimalsViewController

@synthesize chooseTimeViewController;


-(IBAction) chooseTime{
	
	if (self.chooseTimeViewController == nil)
	{
		ChooseTimeViewController *chooseDetail = [[ChooseTimeViewController alloc] initWithNibName: @"ChooseTimeView" bundle:[NSBundle mainBundle]];
		self.chooseTimeViewController = chooseDetail;
		[chooseDetail release];
	}
	
	AlarmAnimalsAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
	[delegate.navController pushViewController:chooseTimeViewController animated:YES];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	self.title = NSLocalizedString(@"Alarm Animals", @"alarm animals app");
	
	[[UIApplication sharedApplication] setIdleTimerDisabled: YES];
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
	[chooseTimeViewController release];
}


@end
