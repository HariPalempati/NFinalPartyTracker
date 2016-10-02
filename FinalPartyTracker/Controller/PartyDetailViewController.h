//
//  PartyDetailViewController.h
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 6/07/15.
//  Copyright (c) 2015 edu.Sysintelli.ios.hari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Party.h"
#import <AddressBook/AddressBook.h>
#import <AddressBookUI/AddressBookUI.h>
#import <Social/Social.h> // Interacts with Facebook and Twitter
#import <EventKit/EventKit.h> // Interacts with Calender
#import <EventKitUI/EventKitUI.h>
#import <MessageUI/MessageUI.h> // Interacts with Email and Sms
#import <FBSDKShareKit/FBSDKShareKit.h>

#import "AppDelegate.h"
#import "ListofPartiesTableViewController.h"


@interface PartyDetailViewController : UIViewController <MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate, ABPeoplePickerNavigationControllerDelegate>

@property (nonatomic, retain) Party * party;
@property (weak, nonatomic) IBOutlet UITextField *textName;
@property (weak, nonatomic) IBOutlet UITextField *textTime;
@property (weak, nonatomic) IBOutlet UITextField *textLocation;
@property (weak, nonatomic) IBOutlet UILabel *labelGuests;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *guestureSwipeLeft;
@property (strong, nonatomic) IBOutlet UILongPressGestureRecognizer *guestureLongPress;

-(void) setParty:(Party *)party;
- (IBAction)saveParty:(id)sender;
- (IBAction)userDidLongPress:(id)sender;
- (IBAction)userSwipedLeft:(id)sender;
//- (IBAction)cancelParty:(id)sender;

- (IBAction)sendSms:(id)sender;
- (IBAction)pickAGuest:(id)sender;
- (IBAction)createACalenderEvent:(id)sender;
- (IBAction)postToFacebook:(id)sender;
- (IBAction)postToTwitter:(id)sender;
- (IBAction)sendEmail:(id)sender;

 //@property (nonatomic, copy) ListofPartiesTableViewController * aReference1;

@end
