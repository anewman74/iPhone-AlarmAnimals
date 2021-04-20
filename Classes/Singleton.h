//
//  Singleton.h
//  AlarmAnimals
//
//  Created by Andrew Newman on 5/8/11.
//  Copyright 2011 LightenUp! Enterprises, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Singleton : NSObject {
	
	NSUInteger intTotalSecondsDifference;
	NSUInteger selectedHour;
	NSUInteger selectedMinutes;
}

@property (nonatomic, assign) NSUInteger intTotalSecondsDifference;
@property (nonatomic, assign) NSUInteger selectedHour;
@property (nonatomic, assign) NSUInteger selectedMinutes;

+ (Singleton*) sharedSingleton;

- (NSUInteger) getIntTotalSecondsDifference;

- (void) setIntTotalSecondsDifference:(NSUInteger)value;

- (NSUInteger) getSelectedHour;

- (void) setSelectedHour:(NSUInteger)value;

- (NSUInteger) getSelectedMinutes;

- (void) setSelectedMinutes:(NSUInteger)value;


@end