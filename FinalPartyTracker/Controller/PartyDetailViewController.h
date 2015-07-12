//
//  PartyDetailViewController.h
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 6/07/15.
//  Copyright (c) 2015 edu.Sysintelli.ios.hari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Party.h"

@interface PartyDetailViewController : UIViewController

@property (nonatomic, retain) Party * party;

-(void) setParty:(Party *)party;
@end
