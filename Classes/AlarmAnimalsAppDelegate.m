//
//  AlarmAnimalsAppDelegate.m
//  AlarmAnimals
//
//  Created by Andrew Newman on 5/8/11.
//  Copyright 2011 LightenUp! Enterprises, LLC. All rights reserved.
//

#import "AlarmAnimalsAppDelegate.h"

@implementation AlarmAnimalsAppDelegate

@synthesize window;
@synthesize rootController;
@synthesize navController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	
    // Override point for customization after application launch
	[window addSubview:rootController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
	[rootController release];
	[navController release];
}


@end
