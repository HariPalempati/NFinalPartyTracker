//
//  Guest.m
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 6/07/15.
//  Copyright (c) 2015 edu.Sysintelli.ios.hari. All rights reserved.
//

#import "Guest.h"

@implementation Guest

- (void) setGuestAttending {
    
    _guestStatus = YES;
}
- (void) setGuestNotAttending {
    
    _guestStatus = NO;

}
- (void) initWithGuestName : (NSString *) guestName {
 
    _guestName = guestName;
}

// Getter Methods
- (NSString *)getGuestName {
    
    return _guestName;
}
- (BOOL) isGuestAttending {
    
    return _guestStatus;
}

@end
