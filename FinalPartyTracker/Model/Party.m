//
//  Party.m
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 6/07/15.
//  Copyright (c) 2015 edu.Sysintelli.ios.hari. All rights reserved.
//

#import "Party.h"

@implementation Party

- (void)initWithPartyName : (NSString *) partyName {
    
    _partyName = partyName;
    
}

// Method Declaration with 2 parameters
- (void)initWithPartyName : (NSString *) partyName WithPartyLocation : (NSString *) partyLocation {
    
    _partyName = partyName;
    _partyLocation = partyLocation;
    
}

// Method Declaration with 3 parameters
- (void)initWithPartyName : (NSString *) partyName WithPartyLocation : (NSString *) partyLocation WithPartyTime : (NSString *) partyTime {
    
    _partyName = partyName;
    _partyLocation = partyLocation;
    _partyTime = partyTime;
    
}

// Method Declaration with 4 parameters
- (void)initWithPartyName : (NSString *) partyName WithPartyLocation : (NSString *) partyLocation WithPartyTime : (NSString *) partyTime WithGuests : (NSMutableArray *)guests {
    
    _partyName = partyName;
    _partyLocation = partyLocation;
    _partyTime = partyTime;
    _guests = guests;
    
}
// ........................................ //

- (void) addGuestToParty : (Guest *)guest {
    
    [_guests addObject:guest]; // adding parameter to the Guests Array
    
}
// Getter Methods

- (NSMutableArray *) getListofGuests {
    
    return _guests; // returning guests Array
    
}
- (NSInteger) getNumberofGuests {
    
    return [_guests count]; // returning Array count
    
    //return _guests.count; // we can do it, but in here we can't do dot notation since we are using mutableArray which is dynamic
    
}
- (NSString *) getPartyName {
    
    return _partyName;
}
- (NSString *) getPartyLocation {
    
    return _partyLocation;
}
- (NSString *) getPartyTime {
    
    return _partyTime;
}


@end
