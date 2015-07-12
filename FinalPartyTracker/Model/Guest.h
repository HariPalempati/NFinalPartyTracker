//
//  Guest.h
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 6/07/15.
//  Copyright (c) 2015 edu.Sysintelli.ios.hari. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Guest : NSObject

@property(nonatomic,retain) NSString * guestName;
@property(nonatomic) BOOL guestStatus;

// Setter Methods
- (void) setGuestAttending;
- (void) setGuestNotAttending;
- (void) initWithGuestName : (NSString *) guestName;

// Getter Methods
- (NSString *)getGuestName;
- (BOOL) isGuestAttending;

@end
