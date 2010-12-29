#import <Foundation/Foundation.h>
#import "DriveThisController.h"

int main (int argc, const char * argv[]) 
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    DriveThisController *driveToSanJose = [[[DriveThisController alloc] init] autorelease];
	[driveToSanJose rollOut];
	[driveToSanJose release];
	
    [pool drain];
    return 0;
}
