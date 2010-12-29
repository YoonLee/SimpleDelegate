//
//  AreWeThereYet.h
//  SimpleDelegate
//
//  Created by Yoon Lee on 12/29/10.
//  Copyright 2010 University of California, Irvine. All rights reserved.
//

#import <Foundation/Foundation.h>

// delegate은 현 클레스에서 어떠한 상황이 진행되었는지 알려주는 상태보고서다.
// states
// Irvine(delays 3s) -> LA(delays 3s) -> San Jose(delays 3s) -> done
@protocol AreWeThereYetDelegate <NSObject>

@required
- (void) in_a_Town_LA:(BOOL)in_a_LA;
- (void) in_a_Town_Irvine:(BOOL)in_a_Irvine;
- (void) in_a_Town_SanJose:(BOOL)arrived;

@end

@interface AreWeThereYet : NSObject 
{
	id <AreWeThereYetDelegate> delegate;
}

@property(retain) id delegate;

// public method call
- (void) letsGoToSanJose;

@end