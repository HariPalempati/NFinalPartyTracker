//
//  ListofPartiesTableViewController.hListofPartiesTableViewController
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 6/07/15.
//  Copyright (c) 2015 edu.Sysintelli.ios.hari. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "Party.h"
#import <CoreData/CoreData.h>
#import "PartyDetailViewController.h"
#import "ManagedParty.h"
#import "AppDelegate.h"

@interface ListofPartiesTableViewController : UITableViewController

@property (nonatomic , strong) IBOutlet UITableView * myTableView;

//@property (nonatomic, retain) NSMutableArray * parties;

@property (nonatomic, retain) NSMutableArray * parties; // FOR COREDATA, since it will modify the Array, we can use mutable ,but we don't need it
//@property (weak, nonatomic) IBOutlet UITextField *textName;
//@property (weak, nonatomic) IBOutlet UITextField *textTime;
//@property (weak, nonatomic) IBOutlet UITextField *textLocation;
//@property (weak, nonatomic) IBOutlet UILabel *labelGuests;
//
//- (IBAction)saveParty:(id)sender;
-(IBAction)unwindFromPartyDetail:(UIStoryboardSegue*)segue;

//@property (nonatomic, copy) PartyDetailViewController * aReference;

@end
