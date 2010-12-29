//
//  AreWeThereYet.m
//  SimpleDelegate
//
//  Created by Yoon Lee on 12/29/10.
//  Copyright 2010 University of California, Irvine. All rights reserved.
//

#import "AreWeThereYet.h"

// private method sort of
@interface AreWeThereYet()

- (void) sleepDelay;

@end


@implementation AreWeThereYet
@synthesize delegate;

- (void) letsGoToSanJose
{
	// Irvine
	[self sleepDelay];
	[[self delegate] in_a_Town_Irvine:YES];
	
	// LA
	[self sleepDelay];
	[[self delegate] in_a_Town_LA:YES];
	
	// San Jose
	[self sleepDelay];
	// notifies to the delegate that current status is done.
	[[self delegate] in_a_Town_SanJose:YES];
}

// private method
- (void) sleepDelay
{
	[NSThread sleepForTimeInterval:3.0f];
}

- (void) dealloc
{
	[super dealloc];
}

@end
