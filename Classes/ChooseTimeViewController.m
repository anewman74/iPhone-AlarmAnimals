    //
//  ChooseTimeViewController.m
//  AlarmAnimals
//
//  Created by Andrew Newman on 5/8/11.
//  Copyright 2011 LightenUp! Enterprises, LLC. All rights reserved.
//

#import "ChooseTimeViewController.h"
#import "AlarmAnimalsAppDelegate.h"
#import "ChooseAudioViewController.h"
#import "Singleton.h"
#import "ArchivingClass.h"


@implementation ChooseTimeViewController

@synthesize chooseAudioViewController;
@synthesize datePicker;


#pragma mark  Calculate differences between Selected Time and TimeNow to set the timer for alarm.
-(void) calculateDifferences {
	
	//Selected Time Values:
	formatter = [[[NSDateFormatter alloc] init] autorelease];
	dateSelectedTime = [datePicker date];
	
	[formatter setDateFormat:@"HH:mm. EEEE dd MMMM, yyyy"];
	strSelectedTime = [formatter stringFromDate:dateSelectedTime];	
	
	formatter2 = [[[NSDateFormatter alloc] init] autorelease];	
	[formatter2 setDateFormat:@"dd"];
	strSelectedDay = [formatter2 stringFromDate:dateSelectedTime];	
	intSelectedDay = [strSelectedDay intValue];
	
	[formatter2 setDateFormat:@"HH"];
	strSelectedHour = [formatter2 stringFromDate:dateSelectedTime];
	intSelectedHour = [strSelectedHour intValue];
	
	[formatter2 setDateFormat:@"mm"];
	strSelectedMinutes = [formatter2 stringFromDate:dateSelectedTime];	
	intSelectedMinutes = [strSelectedMinutes intValue];
	
	//Today's date values:
	formatter4 = [[[NSDateFormatter alloc] init] autorelease];
	nsDateToday = [NSDate date];
	
	[formatter4 setDateFormat:@"dd"];
	strTodayDay = [formatter4 stringFromDate:nsDateToday];
	intTodayDay = [strTodayDay intValue];
	
	[formatter4 setDateFormat:@"HH"];
	strTodayHour = [formatter4 stringFromDate:nsDateToday];
	intTodayHour = [strTodayHour intValue];
	
	[formatter4 setDateFormat:@"mm"];
	strTodayMinutes = [formatter4 stringFromDate:nsDateToday];	
	intTodayMinutes = [strTodayMinutes intValue];
	
	[formatter4 setDateFormat:@"ss"];
	strTodaySeconds = [formatter4 stringFromDate:nsDateToday];	
	intTodaySeconds = [strTodaySeconds intValue];
	
	
	if (((intTodayHour > intSelectedHour)) || ((intTodayHour == intSelectedHour) && (intTodayMinutes >= intSelectedMinutes)))
	{
		intSelectedDay = intSelectedDay + 1;
	}
	
	if(intTodayDay == intSelectedDay)
	{
		if(intSelectedMinutes > intTodayMinutes)
		{
			intDifferenceInMinutes = intSelectedMinutes - intTodayMinutes -1;
			intDifferenceInHours = intSelectedHour - intTodayHour;
		}
		else 
		{
			intDifferenceInMinutes = intSelectedMinutes +(60 - intTodayMinutes - 1);
			intDifferenceInHours = intSelectedHour - intTodayHour - 1;
		}
	}
	
	else 
	{
		if(intSelectedMinutes > intTodayMinutes)
		{
			intDifferenceInMinutes = intSelectedMinutes - intTodayMinutes -1;
			intDifferenceInHours = (24 - intTodayHour) + intSelectedHour;
		}
		else 
		{
			intDifferenceInMinutes = intSelectedMinutes +(60 - intTodayMinutes - 1);
			intDifferenceInHours = (24 - (intTodayHour + 1)) + intSelectedHour;
		}
	}
	intDifferenceInSeconds = (intDifferenceInMinutes * 60) + (intDifferenceInHours * 60 * 60) + (60 - intTodaySeconds);	
	
	[[Singleton sharedSingleton] setIntTotalSecondsDifference:intDifferenceInSeconds];
	[[Singleton sharedSingleton] setSelectedHour:intSelectedHour];
	[[Singleton sharedSingleton] setSelectedMinutes:intSelectedMinutes];
}


#pragma mark Save the time for future use.
-(IBAction) saveSettings {
	
	dateSaveTime = [datePicker date];
	formatter5 = [[[NSDateFormatter alloc] init] autorelease];
	[formatter5 setDateFormat:@"HH"];
	strSaveHour = [formatter5 stringFromDate:dateSaveTime];
	savedAlarmHour = [strSaveHour intValue];
	
	[formatter5 setDateFormat:@"mm"];
	strSaveMinutes = [formatter5 stringFromDate:dateSaveTime];
	savedAlarmMinutes = [strSaveMinutes intValue];
	
	if(savedAlarmMinutes < 10)
	{
		strSaveMinutes = [[NSString alloc] initWithFormat:
						  @"0%i",savedAlarmMinutes];		
	}
	
	else
	{
		strSaveMinutes = [[NSString alloc] initWithFormat:
						  @"%i",savedAlarmMinutes];
	}
	
	if(savedAlarmHour == 0)
	{
		intMessageHours = 12;
		
		message = [[NSString alloc] initWithFormat:
				   @"The alarm has been set to %i:%@am", intMessageHours, strSaveMinutes];
	}
	else if(savedAlarmHour == 12)
	{
		message = [[NSString alloc] initWithFormat:
				   @"The alarm has been set to %i:%@pm", savedAlarmHour, strSaveMinutes];
	}
	else if(savedAlarmHour > 12)
	{
		intMessageHours = savedAlarmHour - 12;
		
		message = [[NSString alloc] initWithFormat:
				   @"The alarm has been set to %i:%@pm", intMessageHours, strSaveMinutes];
	}
	else 
	{
		message = [[NSString alloc] initWithFormat:
				   @"The alarm has been set to %i:%@am", savedAlarmHour, strSaveMinutes];
	}
	
	UIAlertView *alertTimes = [[UIAlertView alloc] initWithTitle:@"Time Set"
														 message:message
														delegate:nil
											   cancelButtonTitle:@"Confirm"
											   otherButtonTitles:nil];
	[alertTimes show];
	[alertTimes release];
}


#pragma mark Set Audio Button to go to next page.
-(IBAction) chooseAudio{
	
	[self calculateDifferences];
	
	if (self.chooseAudioViewController == nil)
	{
		ChooseAudioViewController *AudioDetail = [[ChooseAudioViewController alloc] initWithNibName: @"ChooseAudioView" bundle:[NSBundle mainBundle]];
		self.chooseAudioViewController = AudioDetail;
		[AudioDetail release];
	}	
	AlarmAnimalsAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
	[delegate.navController pushViewController:chooseAudioViewController animated:YES];		
}


#pragma mark methods to save (saved time) into the archive: kFileName2 in the ArchivingClass when the application terminates.
-(NSString *)filePath {
	NSArray *paths = NSSearchPathForDirectoriesInDomains(
														 NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	return [documentsDirectory stringByAppendingPathComponent:kFileName];
}

- (void)applicationDidEnterBackground:(NSNotification *)notification {
	
	ArchivingClass *archivingClass = [[ArchivingClass alloc]init];
	
	archivingClass.field1 = [NSString stringWithFormat:@"%i", savedAlarmHour];
	archivingClass.field2 = [NSString stringWithFormat:@"%i", savedAlarmMinutes];
	
	NSMutableData *data = [[NSMutableData alloc]init];
	NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc]
								 initForWritingWithMutableData:data];
	[archiver encodeObject:archivingClass forKey:kDataKey];
	[archiver finishEncoding];
	[data writeToFile:[self filePath] atomically:YES];
	[archivingClass release];
	[archiver release];
	[data release];		
}

-(void)applicationWillTerminate:(NSNotification *)notification {
	
	ArchivingClass *archivingClass = [[ArchivingClass alloc]init];
	
	archivingClass.field1 = [NSString stringWithFormat:@"%i", savedAlarmHour];
	archivingClass.field2 = [NSString stringWithFormat:@"%i", savedAlarmMinutes];
	
	NSMutableData *data = [[NSMutableData alloc]init];
	NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc]
								 initForWritingWithMutableData:data];
	[archiver encodeObject:archivingClass forKey:kDataKey];
	[archiver finishEncoding];
	[data writeToFile:[self filePath] atomically:YES];
	[archivingClass release];
	[archiver release];
	[data release];		
}

#pragma mark viewDidLoad method
- (void)viewDidLoad {
	
	self.title = NSLocalizedString(@"Set Time", @"time alarm");
	
	[[UIApplication sharedApplication] setIdleTimerDisabled: YES];
	
	datePicker.datePickerMode = UIDatePickerModeTime;
	datePicker.minuteInterval = 1;
	
	now = [[NSDate alloc] init];
	
	formatter3 = [[[NSDateFormatter alloc] init] autorelease];
	[formatter3 setDateFormat:@"yyyy"];
	strTodayyear = [formatter3 stringFromDate:now];
	
	[formatter3 setDateFormat:@"MM"];
	strTodaymonth = [formatter3 stringFromDate:now];
	
	[formatter3 setDateFormat:@"dd"];
	strTodayday = [formatter3 stringFromDate:now];
	
	[formatter3 setDateFormat:@"HH"];
	strTodayhour = [formatter3 stringFromDate:now];
	
	[formatter3 setDateFormat:@"mm"];
	strTodayminutes = [formatter3 stringFromDate:now];	
	
	[formatter3 setDateFormat:@"ss"];
	strTodayseconds = [formatter3 stringFromDate:now];	
	
	
	NSString *filePath = [self filePath];
	if([[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
		
		NSData *data = [[NSMutableData alloc] initWithContentsOfFile:[self filePath]];
		NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
		ArchivingClass *archivingClass = [unarchiver decodeObjectForKey:kDataKey];
		[unarchiver finishDecoding];
		
		savedAlarmHour = [archivingClass.field1 intValue];
		savedAlarmMinutes = [archivingClass.field2 intValue];
		
		strSavedSettings = [[NSString alloc] initWithFormat:
							@"%@-%@-%@ %i:%i:%@ -0700", strTodayyear, strTodaymonth, strTodayday, savedAlarmHour, savedAlarmMinutes, strTodayseconds];
		
		savedDate = [[NSDate alloc] initWithString: strSavedSettings];
		
		[datePicker setDate:savedDate animated:NO];
		
		[unarchiver release];
		[data release];
	}
	
	else {
		//If there are no saved alarm settings, set the date picker to now.		
		[datePicker setDate:now animated:NO];
	}

	
	UIApplication *app = [UIApplication sharedApplication];
	[[NSNotificationCenter defaultCenter] addObserver:self
											 selector:@selector(applicationDidEnterBackground:)
												 name:UIApplicationDidEnterBackgroundNotification
											   object:app];

	
	UIApplication *app2 = [UIApplication sharedApplication];
	[[NSNotificationCenter defaultCenter] addObserver:self
											 selector:@selector(applicationWillTerminate:)
												 name:UIApplicationWillTerminateNotification
											   object:app2];
	
	[super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}


- (void)dealloc {
    [super dealloc];
	[chooseAudioViewController release];
	
	[datePicker release];
	
	[strSelectedTime release];
	[formatter release];
	[dateSelectedTime release];
	
	[formatter2 release];
	[strSelectedDay release];
	[strSelectedHour release];
	[strSelectedMinutes release];
	
	[formatter3 release];
	[now release];
	[strTodayyear release];
	[strTodaymonth release];
	[strTodayday release];
	[strTodayhour release];
	[strTodayminutes release];
	[strTodayseconds release];
	
	[formatter4 release];
	[nsDateToday release];
	[strTodayDay release];
	[strTodayHour release];
	[strTodayMinutes release];
	[strTodaySeconds release];
	
	[dateSaveTime release];
	[formatter5 release];
	[strSaveHour release];
	[strSaveMinutes release];
	[strSavedSettings release];
	[savedDate release];
	
	[strSelectedMin release];
	[message release];
}


@end
