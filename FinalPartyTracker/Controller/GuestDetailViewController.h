//
//  GuestDetailViewController.h
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 6/07/15.
//  Copyright (c) 2015 edu.Sysintelli.ios.hari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GuestDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textName;
@property (weak, nonatomic) IBOutlet UITextField *textAge;

- (IBAction)loadFromFile:(id)sender;
- (IBAction)saveToFile:(id)sender;

@end
