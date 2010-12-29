//
//  DriveThisController.h
//  SimpleDelegate
//
//  Created by Yoon Lee on 12/29/10.
//  Copyright 2010 University of California, Irvine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AreWeThereYet.h"

@interface DriveThisController : NSObject <AreWeThereYetDelegate>
{
	AreWeThereYet *awty;
}

- (void) rollOut;

@end
