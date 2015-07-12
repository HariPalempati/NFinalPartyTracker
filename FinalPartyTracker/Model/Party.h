//
//  Party.h
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 6/07/15.
//  Copyright (c) 2015 edu.Sysintelli.ios.hari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Guest.h"

@interface Party : NSObject

// I am declaring my properties as private

@property(nonatomic,retain) NSString * partyName;
@property(nonatomic,retain) NSString * partyTime;
@property(nonatomic,retain) NSString * partyLocation;
@property(nonatomic,retain) NSMutableArray * guests;

// As I created private properties, let me declare some getter and setter methods

// Setter Methods
// Method Declaration with 1 parameter

- (void)initWithPartyName : (NSString *) partyName;

// Method Declaration with 2 parameters
- (void)initWithPartyName : (NSString *) partyName WithPartyLocation : (NSString *) partyLocation;

// Method Declaration with 3 parameters
- (void)initWithPartyName : (NSString *) partyName WithPartyLocation : (NSString *) partyLocation WithPartyTime : (NSString *) partyTime;

// Method Declaration with 4 parameters
- (void)initWithPartyName : (NSString *) partyName WithPartyLocation : (NSString *) partyLocation WithPartyTime : (NSString *) partyTime WithGuests : (NSMutableArray *)guests;


// ........................................ //

- (void) addGuestToParty : (Guest *)guest;
// Getter Methods

- (NSMutableArray *) getListofGuests;
- (NSInteger) getNumberofGuests;
- (NSString *) getPartyName;
- (NSString *) getPartyLocation;
- (NSString *) getPartyTime;

-(void) setPartyName : (NSString *) partyName;
-(void) setPartyLocation : (NSString *) partyLocation;
-(void) setPartyTime : (NSString *) partyTime;

@end
