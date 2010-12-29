//
//  DriveThisController.m
//  SimpleDelegate
//
//  Created by Yoon Lee on 12/29/10.
//  Copyright 2010 University of California, Irvine. All rights reserved.
//

#import "DriveThisController.h"

@implementation DriveThisController

#pragma mark driving started!
- (void) rollOut
{
	awty = [[AreWeThereYet alloc] init];
	awty.delegate = self;
	[awty letsGoToSanJose];
}

#pragma mark are you in LA town?
- (void) in_a_Town_LA:(BOOL)in_a_LA
{
	NSLog(@"Here in LA");
}

#pragma mark are you still in Irvine?
- (void) in_a_Town_Irvine:(BOOL)in_a_Irvine
{
	NSLog(@"Here in Irvine");
}

#pragma mark are you finally arrived?
- (void) in_a_Town_SanJose:(BOOL)arrived
{
	NSLog(@"Here in San Jose");
}

#pragma mark kill!
- (void) dealloc
{
	[awty release];
	[super dealloc];
}

@end
