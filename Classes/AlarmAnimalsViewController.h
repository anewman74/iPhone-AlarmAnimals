//
//  AlarmAnimalsViewController.h
//  AlarmAnimals
//
//  Created by Andrew Newman on 5/8/11.
//  Copyright 2011 LightenUp! Enterprises, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ChooseTimeViewController;

@interface AlarmAnimalsViewController : UIViewController {
	
	ChooseTimeViewController *chooseTimeViewController;
	
}

@property (nonatomic, retain) ChooseTimeViewController *chooseTimeViewController;

-(IBAction) chooseTime;

@end