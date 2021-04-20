//
//  ArchivingClass.h
//  AlarmAnimals
//
//  Created by Andrew Newman on 5/8/11.
//  Copyright 2011 LightenUp! Enterprises, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kField1Key @"Field1"
#define kField2Key @"Field2"

@interface ArchivingClass : NSObject <NSCoding, NSCopying> {
	NSString *field1;
	NSString *field2;
	
}
@property (nonatomic, retain) NSString *field1;
@property (nonatomic, retain) NSString *field2;

@end
