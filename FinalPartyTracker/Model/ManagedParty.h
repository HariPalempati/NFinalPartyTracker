//
//  ManagedParty.h
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 14/07/15.
//  Copyright (c) 2015 edu.newhaven.ios.hari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class NSManagedObject;

@interface ManagedParty : NSManagedObject

@property (nonatomic, retain) NSString * partyName;
@property (nonatomic, retain) NSString * partyLocation;
@property (nonatomic, retain) NSString * partyTime;
@property (nonatomic, retain) NSSet *guests;
@end

@interface ManagedParty (CoreDataGeneratedAccessors)

- (void)addGuestsObject:(NSManagedObject *)value;
- (void)removeGuestsObject:(NSManagedObject *)value;
- (void)addGuests:(NSSet *)values;
- (void)removeGuests:(NSSet *)values;

@end
