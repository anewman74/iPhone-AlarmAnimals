//
//  ChooseTimeViewController.h
//  AlarmAnimals
//
//  Created by Andrew Newman on 5/8/11.
//  Copyright 2011 LightenUp! Enterprises, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ChooseAudioViewController;

#define kFileName	@"archive"
#define kDataKey	@"Data"

@interface ChooseTimeViewController : UIViewController {

	ChooseAudioViewController *chooseAudioViewController;
	
	IBOutlet UIDatePicker *datePicker;
	
	NSString *strSelectedTime;	
	NSDateFormatter *formatter;
	NSDate *dateSelectedTime;
	
	NSDateFormatter *formatter2;	
	NSString *strSelectedDay;
	NSString *strSelectedHour;
	NSString *strSelectedMinutes;
	
	NSDateFormatter *formatter3;
	NSDate *now;
	NSString *strTodayyear;
	NSString *strTodaymonth;
	NSString *strTodayday;
	NSString *strTodayhour;
	NSString *strTodayminutes;
	NSString *strTodayseconds;
	
	NSDateFormatter *formatter4;
	NSDate *nsDateToday;
	NSString *strTodayDay;
	NSString *strTodayHour;
	NSString *strTodayMinutes;
	NSString *strTodaySeconds;
	
	int intSelectedDay;
	int intSelectedHour;
	int intSelectedMinutes;
	
	int intTodayDay;
	int intTodayHour;
	int intTodayMinutes;
	int intTodaySeconds;
	
	int intDifferenceInHours;
	int intDifferenceInMinutes;
	int intDifferenceInSeconds;
	
	int intMessageHours;
	
	NSDate *dateSaveTime;
	NSDateFormatter *formatter5;	
	NSString *strSaveHour;	
	NSString *strSaveMinutes;
	NSString *strSavedSettings;
	NSDate *savedDate;
	int savedAlarmHour;
	int savedAlarmMinutes;
	
	NSString *strSelectedMin;
	NSString *message;
}

@property (nonatomic, retain) ChooseAudioViewController *chooseAudioViewController;
@property (nonatomic, retain) UIDatePicker *datePicker;

-(NSString *) filePath;
-(void)applicationWillTerminate:(NSNotification *)notification;
-(void)applicationDidEnterBackground:(NSNotification *)notification;

-(void) calculateDifferences;
-(IBAction) saveSettings;
-(IBAction) chooseAudio;

@end