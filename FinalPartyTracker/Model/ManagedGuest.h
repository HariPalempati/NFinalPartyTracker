//
//  ManagedGuest.h
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 14/07/15.
//  Copyright (c) 2015 edu.newhaven.ios.hari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class ManagedParty;

@interface ManagedGuest : NSManagedObject

@property (nonatomic, retain) NSString * guestName;
@property (nonatomic) NSInteger guestAge;
@property (nonatomic, retain) ManagedParty *party;

@end
