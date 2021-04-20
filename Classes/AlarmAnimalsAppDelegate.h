//
//  AlarmAnimalsAppDelegate.h
//  AlarmAnimals
//
//  Created by Andrew Newman on 5/8/11.
//  Copyright 2011 LightenUp! Enterprises, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
@class NavController;

@interface AlarmAnimalsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet UITabBarController *rootController;
	IBOutlet NavController *navController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *rootController;
@property (nonatomic, retain) IBOutlet NavController *navController;

@end

