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
@property (weak, nonatomic) IBOutlet UITextField *textName;
@property (weak, nonatomic) IBOutlet UITextField *textTime;
@property (weak, nonatomic) IBOutlet UITextField *textLocation;
@property (weak, nonatomic) IBOutlet UILabel *labelGuests;

-(void) setParty:(Party *)party;
- (IBAction)saveParty:(id)sender;
@end
