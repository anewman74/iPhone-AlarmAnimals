//
//  ChooseAudioViewController.h
//  AlarmAnimals
//
//  Created by Andrew Newman on 5/8/11.
//  Copyright 2011 LightenUp! Enterprises, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AVAudioPlayer;
@class FinalScreen;

@interface ChooseAudioViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource, UIAlertViewDelegate> {
	
	FinalScreen *finalScreen;
	
	IBOutlet UIPickerView *pickerView;
	NSMutableArray *arrRowName;
	IBOutlet UISlider *vol;
	
	AVAudioPlayer *audioPlayer1;
	AVAudioPlayer *audioPlayer2;
	AVAudioPlayer *audioPlayer3;
	AVAudioPlayer *audioPlayer4;
	AVAudioPlayer *audioPlayer5;
	AVAudioPlayer *audioPlayer6;
	AVAudioPlayer *audioPlayer7;
	AVAudioPlayer *audioPlayer8;
	AVAudioPlayer *audioPlayer9;
	AVAudioPlayer *audioPlayer10;
	AVAudioPlayer *audioPlayer11;
	AVAudioPlayer *audioPlayer12;
	AVAudioPlayer *audioPlayer13;
	AVAudioPlayer *audioPlayer14;
	AVAudioPlayer *audioPlayer15;
	
	NSTimer *timer;
	
	int intAudioNumber;
	int audioNumberForAlarm;
	
	BOOL stopAlarmTone;
	BOOL snoozeAlarmTone;
	BOOL AlarmSet;
	BOOL AlarmSoundsFirstTime;
	
	int intSelectedSeconds;
	int intSelectedMinutes;
	int intSelectedHour;
	
	int intMessageHours;
	
	NSString *strSelectedMinutes;
	NSString *messageSelected;
	NSString *message;
	
	NSDateFormatter *formatter;
	NSDate *now;
	NSString *strTodayHour;
	NSString *strTodayMinutes;
}

@property (nonatomic, retain) FinalScreen *finalScreen;

@property (nonatomic, retain) UIPickerView *pickerView;
@property (nonatomic, retain) NSMutableArray *arrRowName;
@property (nonatomic, retain) UISlider *vol;

@property (nonatomic, retain) AVAudioPlayer *audioPlayer1;
@property (nonatomic, retain) AVAudioPlayer *audioPlayer2;
@property (nonatomic, retain) AVAudioPlayer *audioPlayer3;
@property (nonatomic, retain) AVAudioPlayer *audioPlayer4;
@property (nonatomic, retain) AVAudioPlayer *audioPlayer5;
@property (nonatomic, retain) AVAudioPlayer *audioPlayer6;
@property (nonatomic, retain) AVAudioPlayer *audioPlayer7;
@property (nonatomic, retain) AVAudioPlayer *audioPlayer8;
@property (nonatomic, retain) AVAudioPlayer *audioPlayer9;
@property (nonatomic, retain) AVAudioPlayer *audioPlayer10;
@property (nonatomic, retain) AVAudioPlayer *audioPlayer11;
@property (nonatomic, retain) AVAudioPlayer *audioPlayer12;
@property (nonatomic, retain) AVAudioPlayer *audioPlayer13;
@property (nonatomic, retain) AVAudioPlayer *audioPlayer14;
@property (nonatomic, retain) AVAudioPlayer *audioPlayer15;

-(void) stopAudio;

-(void) playAudio1;
-(void) playAudio2;
-(void) playAudio3;
-(void) playAudio4;
-(void) playAudio5;
-(void) playAudio6;
-(void) playAudio7;
-(void) playAudio8;
-(void) playAudio9;
-(void) playAudio10;
-(void) playAudio11;
-(void) playAudio12;
-(void) playAudio13;
-(void) playAudio14;
-(void) playAudio15;

-(void) setAudio;
-(void) showAlertView;

-(IBAction) setAlarm;
-(IBAction) cancelAlarm;
-(IBAction) blackScreen;


-(void) stopAlarm;
-(void) snoozeAlarm;

-(IBAction) changeVolume;

@end
