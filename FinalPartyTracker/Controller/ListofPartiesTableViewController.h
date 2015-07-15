//
//  ListofPartiesTableViewController.h
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 6/07/15.
//  Copyright (c) 2015 edu.Sysintelli.ios.hari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Party.h"
#import <CoreData/CoreData.h>

@interface ListofPartiesTableViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITableView * myTableView;

//@property (nonatomic, retain) NSMutableArray * parties;

@property (nonatomic, retain) NSArray * parties; // FOR COREDATA, since it will modify the Array, we can use mutable ,but we don't need it

-(IBAction)unwindFromPartyDetail:(UIStoryboardSegue*)segue;

@end
