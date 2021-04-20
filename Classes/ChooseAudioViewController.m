    //
//  ChooseAudioViewController.m
//  AlarmAnimals
//
//  Created by Andrew Newman on 5/8/11.
//  Copyright 2011 LightenUp! Enterprises, LLC. All rights reserved.
//

#import "ChooseAudioViewController.h"
#import <AVFoundation/AVAudioPlayer.h>
#import "AlarmAnimalsAppDelegate.h"
#import "Singleton.h"
#import "FinalScreen.h"

@implementation ChooseAudioViewController

@synthesize finalScreen;

@synthesize pickerView;
@synthesize arrRowName;
@synthesize vol;

@synthesize audioPlayer1;
@synthesize audioPlayer2;
@synthesize audioPlayer3;
@synthesize audioPlayer4;
@synthesize audioPlayer5;
@synthesize audioPlayer6;
@synthesize audioPlayer7;
@synthesize audioPlayer8;
@synthesize audioPlayer9;
@synthesize audioPlayer10;
@synthesize audioPlayer11;
@synthesize audioPlayer12;
@synthesize audioPlayer13;
@synthesize audioPlayer14;
@synthesize audioPlayer15;


#pragma mark - method to stop all audio.
-(void) stopAudio {
	[self.audioPlayer1 stop];
	[self.audioPlayer2 stop];
	[self.audioPlayer3 stop];
	[self.audioPlayer4 stop];
	[self.audioPlayer5 stop];
	[self.audioPlayer6 stop];
	[self.audioPlayer7 stop];
	[self.audioPlayer8 stop];
	[self.audioPlayer9 stop];
	[self.audioPlayer10 stop];
	[self.audioPlayer11 stop];
	[self.audioPlayer12 stop];
	[self.audioPlayer13 stop];
	[self.audioPlayer14 stop];
	[self.audioPlayer15 stop];
}


#pragma mark - 15 methods to play each recording.
-(void)playAudio1 {
	[self stopAudio];
	self.audioPlayer1.currentTime = 0;
	[self.audioPlayer1 play];
	
	if((AlarmSet == YES) && (audioNumberForAlarm == 1))
	{
		if(AlarmSoundsFirstTime == YES) 
		{			
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:8];
			
			AlarmSoundsFirstTime = NO;
			[self showAlertView];
		}
		else 
		{
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:8];
		}
	}
}

-(void)playAudio2 {	
	[self stopAudio];	
	self.audioPlayer2.currentTime = 0;
	[self.audioPlayer2 play];
	
	if((AlarmSet == YES) && (audioNumberForAlarm == 2))
	{
		if(AlarmSoundsFirstTime == YES)
		{			
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:13];
			
			AlarmSoundsFirstTime = NO;
			[self showAlertView];
		}
		else 
		{
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:13];
		}
	}
}

-(void)playAudio3 {	
	[self stopAudio];	
	self.audioPlayer3.currentTime = 0;
	[self.audioPlayer3 play];
	
	if((AlarmSet == YES) && (audioNumberForAlarm == 3))
	{
		if(AlarmSoundsFirstTime == YES)
		{			
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:10];
			
			AlarmSoundsFirstTime = NO;
			[self showAlertView];
		}
		else 
		{
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:10];
		}
	}
}

-(void)playAudio4 {
	[self stopAudio];	
	self.audioPlayer4.currentTime = 0;
	[self.audioPlayer4 play];
	
	if((AlarmSet == YES) && (audioNumberForAlarm == 4))
	{
		if(AlarmSoundsFirstTime == YES)
		{			
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:11];
			
			AlarmSoundsFirstTime = NO;
			[self showAlertView];
		}
		else 
		{
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:11];
		}
	}
}

-(void)playAudio5 {
	[self stopAudio];	
	self.audioPlayer5.currentTime = 0;
	[self.audioPlayer5 play];
	
	if((AlarmSet == YES) && (audioNumberForAlarm == 5))
	{
		if(AlarmSoundsFirstTime == YES)
		{			
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:8];
			
			AlarmSoundsFirstTime = NO;
			[self showAlertView];
		}
		else 
		{
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:8];
		}
	}
}

-(void)playAudio6 {
	[self stopAudio];	
	self.audioPlayer6.currentTime = 0;
	[self.audioPlayer6 play];
	
	if((AlarmSet == YES) && (audioNumberForAlarm == 6))
	{
		if(AlarmSoundsFirstTime == YES)
		{			
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:12];
			
			AlarmSoundsFirstTime = NO;
			[self showAlertView];
		}
		else 
		{
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:12];
		}
	}
}

-(void)playAudio7 {
	[self stopAudio];	
	self.audioPlayer7.currentTime = 0;
	[self.audioPlayer7 play];
	
	if((AlarmSet == YES) && (audioNumberForAlarm == 7))
	{
		if(AlarmSoundsFirstTime == YES)
		{			
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:8];
			
			AlarmSoundsFirstTime = NO;
			[self showAlertView];
		}
		else 
		{
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:8];
		}
	}
}

-(void)playAudio8 {
	[self stopAudio];	
	self.audioPlayer8.currentTime = 0;
	[self.audioPlayer8 play];
	
	if((AlarmSet == YES) && (audioNumberForAlarm == 8))
	{
		if(AlarmSoundsFirstTime == YES)
		{			
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:7];
			
			AlarmSoundsFirstTime = NO;
			[self showAlertView];
		}
		else 
		{
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:7];
		}
	}
}

-(void)playAudio9 {
	[self stopAudio];		
	self.audioPlayer9.currentTime = 0;
	[self.audioPlayer9 play];
	
	if((AlarmSet == YES) && (audioNumberForAlarm == 9))
	{
		if(AlarmSoundsFirstTime == YES)
		{			
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:11];
			
			AlarmSoundsFirstTime = NO;
			[self showAlertView];
		}
		else 
		{
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:11];
		}
	}
}

-(void)playAudio10 {
	[self stopAudio];		
	self.audioPlayer10.currentTime = 0;
	[self.audioPlayer10 play];
	
	if((AlarmSet == YES) && (audioNumberForAlarm == 10))
	{
		if(AlarmSoundsFirstTime == YES)
		{			
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:13];
			
			AlarmSoundsFirstTime = NO;
			[self showAlertView];
		}
		else 
		{
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:13];
		}
	}
}

-(void)playAudio11 {	
	[self stopAudio];
	self.audioPlayer11.currentTime = 0;
	[self.audioPlayer11 play];
	
	if((AlarmSet == YES) && (audioNumberForAlarm == 11))
	{
		if(AlarmSoundsFirstTime == YES)
		{			
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:8];
			
			AlarmSoundsFirstTime = NO;
			[self showAlertView];
		}
		else 
		{
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:8];
		}
	}
}

-(void)playAudio12 {	
	[self stopAudio];	
	self.audioPlayer12.currentTime = 0;
	[self.audioPlayer12 play];
	
	if((AlarmSet == YES) && (audioNumberForAlarm == 12))
	{
		if(AlarmSoundsFirstTime == YES)
		{			
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:10];
			
			AlarmSoundsFirstTime = NO;
			[self showAlertView];
		}
		else 
		{
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:10];
		}
	}
}

-(void)playAudio13 {	
	[self stopAudio];	
	self.audioPlayer13.currentTime = 0;
	[self.audioPlayer13 play];
	
	if((AlarmSet == YES) && (audioNumberForAlarm == 13))
	{
		if(AlarmSoundsFirstTime == YES)
		{			
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:8];
			
			AlarmSoundsFirstTime = NO;
			[self showAlertView];
		}
		else 
		{
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:8];
		}
	}
}

-(void)playAudio14 {
	[self stopAudio];	
	self.audioPlayer14.currentTime = 0;
	[self.audioPlayer14 play];
	
	if((AlarmSet == YES) && (audioNumberForAlarm == 14))
	{
		if(AlarmSoundsFirstTime == YES)
		{			
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:12];
			
			AlarmSoundsFirstTime = NO;
			[self showAlertView];
		}
		else 
		{
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:12];
		}
	}
}

-(void)playAudio15 {
	[self stopAudio];	
	self.audioPlayer15.currentTime = 0;
	[self.audioPlayer15 play];
	
	if((AlarmSet == YES) && (audioNumberForAlarm == 15))
	{
		if(AlarmSoundsFirstTime == YES)
		{			
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:8];
			
			AlarmSoundsFirstTime = NO;
			[self showAlertView];
		}
		else 
		{
			[self performSelector:@selector(setAudio)
					   withObject:nil
					   afterDelay:8];
		}
	}
}

#pragma mark Alert View when alarm sounds.
-(void) showAlertView {
	
	//Time NOW
	formatter = [[[NSDateFormatter alloc] init] autorelease];
	now = [NSDate date];
	
	[formatter setDateFormat:@"HH"];
	strTodayHour = [formatter stringFromDate:now];
	int intTodayHour = [strTodayHour intValue];
	
	[formatter setDateFormat:@"mm"];
	strTodayMinutes = [formatter stringFromDate:now];
	int intTodayMinutes = [strTodayMinutes intValue];
	
	if(intTodayMinutes < 10)
	{
		strTodayMinutes = [[NSString alloc] initWithFormat:
						   @"0%i",intTodayMinutes];		
	}
	
	else {
		strTodayMinutes = [[NSString alloc] initWithFormat:
						   @"%i",intTodayMinutes];
	}
	
	
	//Time selected
	intSelectedHour = [[Singleton sharedSingleton] getSelectedHour];
	
	intSelectedMinutes = [[Singleton sharedSingleton] getSelectedMinutes];
	
	if(intSelectedMinutes < 10)
	{
		strSelectedMinutes = [[NSString alloc] initWithFormat:
							  @"0%i",intSelectedMinutes];		
	}
	
	else
	{
		strSelectedMinutes = [[NSString alloc] initWithFormat:
							  @"%i",intSelectedMinutes];
	}
	
	if(intSelectedHour == 0)
	{
		intMessageHours = 12;
		
		messageSelected = [[NSString alloc] initWithFormat:
				   @"Your alarm was set for %i:%@am", intMessageHours, strSelectedMinutes];
	}
	
	else if(intSelectedHour == 12)
	{
		intMessageHours = 12;
		messageSelected = [[NSString alloc] initWithFormat:
				   @"The alarm was set for %i:%@pm", intMessageHours, strSelectedMinutes];
	}
	
	else if(intSelectedHour > 12)
	{
		intMessageHours = intSelectedHour - 12;
		
		messageSelected = [[NSString alloc] initWithFormat:
				   @"Your alarm was set for %i:%@pm", intMessageHours, strSelectedMinutes];
	}
	else 
	{
		messageSelected = [[NSString alloc] initWithFormat:
				   @"Your alarm was set for %i:%@am", intSelectedHour, strSelectedMinutes];
	}
	
	
	//Set message
	if(intTodayHour == 0)
	{
		intMessageHours = 12;
		
		message = [[NSString alloc] initWithFormat:
				   @"%@. The time is now %i:%@am", messageSelected, intMessageHours, strTodayMinutes];
	}
	
	if(intTodayHour == 12)
	{
		intMessageHours = 12;
		message = [[NSString alloc] initWithFormat:
				   @"%@. The time is now %i:%@pm", messageSelected, intMessageHours, strTodayMinutes];
	}
	
	else if(intTodayHour > 12)
	{
		intMessageHours = intTodayHour - 12;
		
		message = [[NSString alloc] initWithFormat:
				   @"%@. The time is now %i:%@pm", messageSelected, intMessageHours, strTodayMinutes];
	}
	else 
	{
		message = [[NSString alloc] initWithFormat:
				   @"%@. The time is now %i:%@am", messageSelected, intTodayHour, strTodayMinutes];
	}
	
	UIAlertView *alertTimes2 = [[UIAlertView alloc] initWithTitle:@"Good Day!"
														  message:message
														 delegate:self
												cancelButtonTitle:@"Snooze"
												otherButtonTitles:@"Stop", nil];
	[alertTimes2 show];
	[alertTimes2 release];
	[message release];
}

#pragma mark event when user touches alert view.
- (void)alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
	// the user clicked one of the OK/Cancel buttons
	if (buttonIndex == 0)
	{
		[self snoozeAlarm];
	}
	else
	{
		[self stopAlarm];
	}
}

#pragma mark setAudio method
-(void) setAudio {
	if (stopAlarmTone == NO)
	{
		switch (intAudioNumber) {
			case 1:
				[self playAudio1];
				break;
			case 2:
				[self playAudio2];
				break;
			case 3:
				[self playAudio3];
				break;
			case 4:
				[self playAudio4];
				break;
			case 5:
				[self playAudio5];
				break;
			case 6:
				[self playAudio6];
				break;
			case 7:
				[self playAudio7];
				break;
			case 8:
				[self playAudio8];
				break;
			case 9:
				[self playAudio9];
				break;
			case 10:
				[self playAudio10];
				break;
			case 11:
				[self playAudio11];
				break;
			case 12:
				[self playAudio12];
				break;
			case 13:
				[self playAudio13];
				break;
			case 14:
				[self playAudio14];
				break;
			case 15:
				[self playAudio15];
				break;
			default:
				break;
		}
	}
	else
	{
		if(snoozeAlarmTone == YES)
		{
			//Set stopAlarmTone to NO so that the audio will play once the snooze time has elapsed.
			stopAlarmTone = NO;
		}
	}
}

#pragma mark setAlarm method
-(IBAction) setAlarm {
	
	stopAlarmTone = NO;
	snoozeAlarmTone = NO;
	
	audioNumberForAlarm = intAudioNumber;
	
	intSelectedSeconds = [[Singleton sharedSingleton] getIntTotalSecondsDifference];
	
	intSelectedHour = [[Singleton sharedSingleton] getSelectedHour];
	
	intSelectedMinutes = [[Singleton sharedSingleton] getSelectedMinutes];
	
	if(AlarmSet == NO)
	{
		timer = [NSTimer scheduledTimerWithTimeInterval:intSelectedSeconds
												 target:self
											   selector:@selector(setAudio)
											   userInfo:nil
												repeats:NO];
		
		
		if(intSelectedMinutes < 10)
		{
			strSelectedMinutes = [[NSString alloc] initWithFormat:
								  @"0%i",intSelectedMinutes];		
		}
		
		else
		{
			strSelectedMinutes = [[NSString alloc] initWithFormat:
								  @"%i",intSelectedMinutes];
		}
		
		if(intSelectedHour == 0)
		{
			intMessageHours = 12;
			
			message = [[NSString alloc] initWithFormat:
					@"Your favorite animal will wake you at %i:%@am", intMessageHours, strSelectedMinutes];
		}
		
		else if(intSelectedHour == 12)
		{
			message = [[NSString alloc] initWithFormat:
				   @"The alarm has been set to %i:%@pm", intSelectedHour, strSelectedMinutes];
		}
		
		else if(intSelectedHour > 12)
		{
			intMessageHours = intSelectedHour - 12;
			
			message = [[NSString alloc] initWithFormat:
					   @"Your favorite animal will wake you at %i:%@pm", intMessageHours, strSelectedMinutes];
		}
		else 
		{
			message = [[NSString alloc] initWithFormat:
					   @"Your favorite animal will wake you at %i:%@am", intSelectedHour, strSelectedMinutes];
		}
		
		UIAlertView *alertTimes = [[UIAlertView alloc] initWithTitle:@"Cool!!"
															 message:message
															delegate:nil
												   cancelButtonTitle:@"Good night"
												   otherButtonTitles:nil];
		[alertTimes show];
		[alertTimes release];
		[message release];
	}
	
	else {
		message = [[NSString alloc] initWithFormat:
				   @"The alarm is already set. Cancel the existing alarm first and then reset a new alarm."];
		
		UIAlertView *alertTimes = [[UIAlertView alloc] initWithTitle:@"Notice"
															 message:message
															delegate:nil
												   cancelButtonTitle:@"OK"
												   otherButtonTitles:nil];
		[alertTimes show];
		[alertTimes release];
		[message release];
	}
	
	AlarmSet = YES;
}

#pragma mark cancelAlarm method
-(IBAction) cancelAlarm {
	
	if(stopAlarmTone == NO){
		
		AlarmSet = NO;
		[timer invalidate];
	}
	
	message =[[NSString alloc] initWithFormat:
			  @"The alarm has been cancelled. You can reset the alarm again when ready."];
	
	UIAlertView *alertTimes3 = [[UIAlertView alloc] initWithTitle:@"Notice"
														  message:message
														 delegate:nil
												cancelButtonTitle:@"OK"
												otherButtonTitles:nil];
	[alertTimes3 show];
	[alertTimes3 release];
	[message release];
}


#pragma mark BlackScreen method
-(IBAction) blackScreen {
	
	message = [[NSString alloc] initWithFormat:
			   @" The black screen is available to diminish the light coming from the phone. Your favorite animal will still wake you up at the desired time."];
	
	UIAlertView *alertTimes = [[UIAlertView alloc] initWithTitle:@"Notice"
														 message:message
														delegate:nil
											   cancelButtonTitle:@"OK"
											   otherButtonTitles:nil];
	[alertTimes show];
	[alertTimes release];
	[message release];
	
	if (self.finalScreen == nil)
	{
		FinalScreen *AudioDetail = [[FinalScreen alloc] initWithNibName: @"FinalScreenView" bundle:[NSBundle mainBundle]];
		self.finalScreen = AudioDetail;
		[AudioDetail release];
	}	
	AlarmAnimalsAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
	[delegate.navController pushViewController:finalScreen animated:YES];	
}


#pragma mark stopAlarm method
-(void) stopAlarm {
	
	stopAlarmTone = YES;
	snoozeAlarmTone == NO;
	[self stopAudio];
	AlarmSoundsFirstTime = YES;
	AlarmSet = NO;
}


#pragma mark snoozeAlarm method
-(void) snoozeAlarm {
	
	stopAlarmTone = YES;
	snoozeAlarmTone = YES;
	[self stopAudio];
	AlarmSoundsFirstTime = YES;
	
	timer = [NSTimer scheduledTimerWithTimeInterval:420
											 target:self
										   selector:@selector(setAudio)
										   userInfo:nil
											repeats:NO];
}


#pragma mark  - change the volume for this view.
-(IBAction) changeVolume {	
	[self.audioPlayer1 setVolume:vol.value];
	[self.audioPlayer2 setVolume:vol.value];
	[self.audioPlayer3 setVolume:vol.value];
	[self.audioPlayer4 setVolume:vol.value];
	[self.audioPlayer5 setVolume:vol.value];
	[self.audioPlayer6 setVolume:vol.value];
	[self.audioPlayer7 setVolume:vol.value];
	[self.audioPlayer8 setVolume:vol.value];
	[self.audioPlayer9 setVolume:vol.value];
	[self.audioPlayer10 setVolume:vol.value];
	[self.audioPlayer11 setVolume:vol.value];
	[self.audioPlayer12 setVolume:vol.value];
	[self.audioPlayer13 setVolume:vol.value];
	[self.audioPlayer14 setVolume:vol.value];
	[self.audioPlayer15 setVolume:vol.value];
}


#pragma mark - viewWillAppear.
//Implement viewWillAppear to reset PlayDelay.
- (void) viewWillAppear:(BOOL)animated {
	intAudioNumber = 3;
	AlarmSet = NO;
	
	//To set the picker row on the view.
	[pickerView selectRow:2 inComponent:0 animated:NO];
}


#pragma mark viewDidLoad method
- (void)viewDidLoad {
	[super viewDidLoad];
	self.title = NSLocalizedString(@"Set Alarm", @"audio alarm");
	
	stopAlarmTone = NO;
	snoozeAlarmTone = NO;
	AlarmSoundsFirstTime = YES;
	AlarmSet = NO;
	intAudioNumber = 3;
	
	[[UIApplication sharedApplication] setIdleTimerDisabled: YES];
	
	//To set the array for the names of each row.
	arrRowName = [[NSMutableArray alloc] init];
	[arrRowName addObject:@" Morning Songbirds "];
	[arrRowName addObject:@" Lions "];
	[arrRowName addObject:@" Coyote "];
	[arrRowName addObject:@" Rooster "];
	[arrRowName addObject:@" Ducks "];
	[arrRowName addObject:@" Elephant "];
	[arrRowName addObject:@" Goats "];
	[arrRowName addObject:@" Horse "];
	[arrRowName addObject:@" Cows Moo "];
	[arrRowName addObject:@" Songbirds "];
	[arrRowName addObject:@" Owls "];
	[arrRowName addObject:@" Donkey "];
	[arrRowName addObject:@" Sheep "];
	[arrRowName addObject:@" Cats Meow "];
	[arrRowName addObject:@" Bear "];
	
	//To set the picker row on the view.
	[pickerView selectRow:2 inComponent:0 animated:NO];
	
	//Playbutton1.
	NSString *filePath1 = [[NSBundle mainBundle] pathForResource:@"Morning Songbirds"
														  ofType:@"mp3"];
	
	NSURL *fileURL1 = [[NSURL alloc] initFileURLWithPath: filePath1];	
	self.audioPlayer1 = [[AVAudioPlayer alloc] 
						 initWithContentsOfURL:fileURL1 error:nil];	
	[filePath1 release];
	[fileURL1 release];
	
	//Playbutton2.
	NSString *filePath2 = [[NSBundle mainBundle] pathForResource:@"Lions"
														  ofType:@"mp3"];	
	NSURL *fileURL2 = [[NSURL alloc] initFileURLWithPath: filePath2];	
	self.audioPlayer2 = [[AVAudioPlayer alloc] 
						 initWithContentsOfURL:fileURL2 error:nil];	
	[filePath2 release];
	[fileURL2 release];
	
	//Playbutton3.
	NSString *filePath3 = [[NSBundle mainBundle] pathForResource:@"Coyote"
														  ofType:@"mp3"];	
	NSURL *fileURL3 = [[NSURL alloc] initFileURLWithPath: filePath3];	
	self.audioPlayer3 = [[AVAudioPlayer alloc] 
						 initWithContentsOfURL:fileURL3 error:nil];	
	[filePath3 release];
	[fileURL3 release];
	
	//Playbutton4.
	NSString *filePath4 = [[NSBundle mainBundle] pathForResource:@"Rooster"
														  ofType:@"mp3"];	
	NSURL *fileURL4 = [[NSURL alloc] initFileURLWithPath: filePath4];	
	self.audioPlayer4 = [[AVAudioPlayer alloc] 
						 initWithContentsOfURL:fileURL4 error:nil];	
	[filePath4 release];
	[fileURL4 release];
	
	//Playbutton5.
	NSString *filePath5 = [[NSBundle mainBundle] pathForResource:@"Ducks"
														  ofType:@"mp3"];	
	NSURL *fileURL5 = [[NSURL alloc] initFileURLWithPath: filePath5];	
	self.audioPlayer5 = [[AVAudioPlayer alloc] 
						 initWithContentsOfURL:fileURL5 error:nil];	
	[filePath5 release];
	[fileURL5 release];
	
	//Playbutton6.
	NSString *filePath6 = [[NSBundle mainBundle] pathForResource:@"Elephants"
														  ofType:@"mp3"];	
	NSURL *fileURL6 = [[NSURL alloc] initFileURLWithPath: filePath6];	
	self.audioPlayer6 = [[AVAudioPlayer alloc] 
						 initWithContentsOfURL:fileURL6 error:nil];	
	[filePath6 release];
	[fileURL6 release];
	
	//Playbutton7.
	NSString *filePath7 = [[NSBundle mainBundle] pathForResource:@"Goats"
														  ofType:@"mp3"];	
	NSURL *fileURL7 = [[NSURL alloc] initFileURLWithPath: filePath7];	
	self.audioPlayer7 = [[AVAudioPlayer alloc] 
						 initWithContentsOfURL:fileURL7 error:nil];	
	[filePath7 release];
	[fileURL7 release];
	
	//Playbutton8.
	NSString *filePath8 = [[NSBundle mainBundle] pathForResource:@"Horse"
														  ofType:@"mp3"];	
	NSURL *fileURL8 = [[NSURL alloc] initFileURLWithPath: filePath8];	
	self.audioPlayer8 = [[AVAudioPlayer alloc] 
						 initWithContentsOfURL:fileURL8 error:nil];	
	[filePath8 release];
	[fileURL8 release];
	
	//Playbutton9.
	NSString *filePath9 = [[NSBundle mainBundle] pathForResource:@"CowsMoo"
														  ofType:@"mp3"];
	NSURL *fileURL9 = [[NSURL alloc] initFileURLWithPath: filePath9];	
	self.audioPlayer9 = [[AVAudioPlayer alloc] 
						 initWithContentsOfURL:fileURL9 error:nil];	
	[filePath9 release];
	[fileURL9 release];
	
	//Playbutton10.
	NSString *filePath10 = [[NSBundle mainBundle] pathForResource:@"Songbirds"
														   ofType:@"mp3"];
	
	NSURL *fileURL10 = [[NSURL alloc] initFileURLWithPath: filePath10];	
	self.audioPlayer10 = [[AVAudioPlayer alloc] 
						  initWithContentsOfURL:fileURL10 error:nil];	
	[filePath10 release];
	[fileURL10 release];
	
	//Playbutton11.
	NSString *filePath11 = [[NSBundle mainBundle] pathForResource:@"Owls"
														   ofType:@"mp3"];
	
	NSURL *fileURL11 = [[NSURL alloc] initFileURLWithPath: filePath11];	
	self.audioPlayer11 = [[AVAudioPlayer alloc] 
						  initWithContentsOfURL:fileURL11 error:nil];	
	[filePath11 release];
	[fileURL11 release];
	
	//Playbutton12.
	NSString *filePath12 = [[NSBundle mainBundle] pathForResource:@"Donkey"
														   ofType:@"mp3"];	
	NSURL *fileURL12 = [[NSURL alloc] initFileURLWithPath: filePath12];	
	self.audioPlayer12 = [[AVAudioPlayer alloc] 
						  initWithContentsOfURL:fileURL12 error:nil];	
	[filePath12 release];
	[fileURL12 release];
	
	//Playbutton13.
	NSString *filePath13 = [[NSBundle mainBundle] pathForResource:@"Sheep"
														   ofType:@"mp3"];	
	NSURL *fileURL13 = [[NSURL alloc] initFileURLWithPath: filePath13];	
	self.audioPlayer13 = [[AVAudioPlayer alloc] 
						  initWithContentsOfURL:fileURL13 error:nil];	
	[filePath13 release];
	[fileURL13 release];
	
	//Playbutton14.
	NSString *filePath14 = [[NSBundle mainBundle] pathForResource:@"CatsMeow"
														   ofType:@"mp3"];	
	NSURL *fileURL14 = [[NSURL alloc] initFileURLWithPath: filePath14];	
	self.audioPlayer14 = [[AVAudioPlayer alloc] 
						  initWithContentsOfURL:fileURL14 error:nil];	
	[filePath14 release];
	[fileURL14 release];
	
	//Playbutton15.
	NSString *filePath15 = [[NSBundle mainBundle] pathForResource:@"Bear"
														   ofType:@"mp3"];	
	NSURL *fileURL15 = [[NSURL alloc] initFileURLWithPath: filePath15];	
	self.audioPlayer15 = [[AVAudioPlayer alloc] 
						  initWithContentsOfURL:fileURL15 error:nil];	
	[filePath15 release];
	[fileURL15 release];
}

#pragma mark - methods to set up the picker view.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
{
	return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
{
	return [arrRowName count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
{
	return [arrRowName objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView 
	  didSelectRow:(NSInteger)row
	   inComponent:(NSInteger)component
{		
	if(row == 0)
	{		
		//play the audio player if the user clicks on the first row.
		intAudioNumber = 1;
		[self playAudio1];	
	}
	
	else if(row == 1)
	{		
		//play the audio player if the user clicks the second row.
		intAudioNumber = 2;
		[self playAudio2];
	}
	
	else if(row == 2)
	{
		//play the audio player if the user clicks on the third row.
		intAudioNumber = 3;
		[self playAudio3];
	}
	
	else if(row == 3)
	{
		//play the audio player if the user clicks the fourth row.
		intAudioNumber = 4;
		[self playAudio4];
	}
	
	else if(row == 4)
	{
		//play the audio player if the user clicks on the fifth row.
		intAudioNumber = 5;
		[self playAudio5];
	}
	
	else if(row == 5)
	{		
		//play the audio player if the user clicks the second row.
		intAudioNumber = 6;
		[self playAudio6];
	}
	
	else if(row == 6)
	{
		//play the audio player if the user clicks on the third row.
		intAudioNumber = 7;
		[self playAudio7];
	}
	
	else if(row == 7)
	{
		//play the audio player if the user clicks the fourth row.
		intAudioNumber = 8;
		[self playAudio8];
	}
	
	else if(row == 8)
	{
		//play the audio player if the user clicks on the fifth row.
		intAudioNumber = 9;
		[self playAudio9];
	}
	
	else if(row == 9)
	{		
		//play the audio player if the user clicks on the first row.		
		intAudioNumber = 10;
		[self playAudio10];
	}
	
	else if(row == 10)
	{		
		//play the audio player if the user clicks on the first row.		
		intAudioNumber = 11;
		[self playAudio11];
	}
	
	else if(row == 11)
	{		
		//play the audio player if the user clicks the second row.
		intAudioNumber = 12;
		[self playAudio12];
	}
	
	else if(row == 12)
	{
		//play the audio player if the user clicks on the third row.
		intAudioNumber = 13;
		[self playAudio13];
	}
	
	else if(row == 13)
	{
		//play the audio player if the user clicks the fourth row.
		intAudioNumber = 14;
		[self playAudio14];
	}
	
	else if(row == 14)
	{
		//play the audio player if the user clicks on the fifth row.
		intAudioNumber = 15;
		[self playAudio15];
	}
}

#pragma mark - method viewWillDisappear.
-(void) viewWillDisappear:(BOOL)animated {
	
	//Stop all audio players.
	[self stopAudio];
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)dealloc {
    [super dealloc];
	[finalScreen release];
	
	[pickerView release];
	[arrRowName release];
	[vol release];
	
	[audioPlayer1 release];
	[audioPlayer2 release];
	[audioPlayer3 release];
	[audioPlayer4 release];
	[audioPlayer5 release];
	[audioPlayer6 release];
	[audioPlayer7 release];
	[audioPlayer8 release];
	[audioPlayer9 release];
	[audioPlayer10 release];
	[audioPlayer11 release];
	[audioPlayer12 release];
	[audioPlayer13 release];
	[audioPlayer14 release];
	[audioPlayer15 release];
	
	[timer release];
	
	[formatter release];
	[now release];
	
	[strSelectedMinutes release];
	[strTodayHour release];
	[strTodayMinutes release];
	
}


@end
