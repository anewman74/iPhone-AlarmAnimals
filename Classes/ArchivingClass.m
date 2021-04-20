//
//  ArchivingClass.m
//  AlarmAnimals
//
//  Created by Andrew Newman on 5/8/11.
//  Copyright 2011 LightenUp! Enterprises, LLC. All rights reserved.
//

#import "ArchivingClass.h"


@implementation ArchivingClass

@synthesize field1;
@synthesize field2;

-(void)encodeWithCoder:(NSCoder *)encoder {
	
	[encoder encodeObject:field1 forKey:kField1Key];
	[encoder encodeObject:field2 forKey:kField2Key];
}

-(id)initWithCoder:(NSCoder *)decoder {
	
	if(self = [super init]) {
		
		self.field1 = [decoder decodeObjectForKey:kField1Key];
		self.field2 = [decoder decodeObjectForKey:kField2Key];
	}
	return self;
}

#pragma mark NSCopying
-(id)copyWithZone:(NSZone *)zone {
	
	ArchivingClass *copy = [[[self class]allocWithZone:zone]init];
	copy.field1 = [[self.field1 copyWithZone:zone]autorelease];
	copy.field2 = [[self.field2 copyWithZone:zone]autorelease];
	
	return copy;
}

@end