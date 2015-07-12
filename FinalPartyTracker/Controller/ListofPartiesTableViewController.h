//
//  ListofPartiesTableViewController.h
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 6/07/15.
//  Copyright (c) 2015 edu.Sysintelli.ios.hari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Party.h"

@interface ListofPartiesTableViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITableView * myTableView;

@property (nonatomic, retain) NSMutableArray * parties;

@end
