//
//  Singleton.m
//  AlarmAnimals
//
//  Created by Andrew Newman on 5/8/11.
//  Copyright 2011 LightenUp! Enterprises, LLC. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

@synthesize intTotalSecondsDifference;
@synthesize selectedHour;
@synthesize selectedMinutes;

static Singleton* _sharedSingleton = nil;

+ (Singleton*)sharedSingleton {
	
	@synchronized([Singleton class]) {
		if(!_sharedSingleton)
			[[self alloc] init];
		
		return _sharedSingleton;
	}
	return nil;
}


+ (id) alloc {
	@synchronized ([Singleton class]) {
		NSAssert(_sharedSingleton == nil, @"Attempted to allocate a second instance of a Singleton.");
		_sharedSingleton = [super alloc];
		return _sharedSingleton;
	}
	
	return nil;
}

-(id) init {
	
	self = [super init];
	intTotalSecondsDifference = 0;
	selectedHour = 0;
	selectedMinutes = 0;
	
	if (self != nil) {
	} 
	return self;
}

- (NSUInteger) getIntTotalSecondsDifference {
	return intTotalSecondsDifference;
}

- (void) setIntTotalSecondsDifference:(NSUInteger)value {
	intTotalSecondsDifference = value;
}

- (NSUInteger) getSelectedHour {
	return selectedHour;
}

- (void) setSelectedHour:(NSUInteger)value {
	selectedHour = value;
}

- (NSUInteger) getSelectedMinutes {
	return selectedMinutes;
}

- (void) setSelectedMinutes:(NSUInteger)value {
	selectedMinutes = value;
}

@end
