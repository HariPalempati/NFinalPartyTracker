//
//  PartyDetailViewController.m
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 6/07/15.
//  Copyright (c) 2015 edu.Sysintelli.ios.hari. All rights reserved.
//

#import "PartyDetailViewController.h"
#import "ListofPartiesTableViewController.h"

@interface PartyDetailViewController ()

@end

@implementation PartyDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //NSLog(@"Name of the party is %@", [_party getPartyName]);
    
    [self refreshPartyDetails];
    
    //[_textName setText: [_party getPartyName]];
}

-(void) setParty:(Party *)party {
    
    _party = party;
    self.title = [party getPartyName];
   // NSLog(@"Name of the party is %@", [_party getPartyName]);
    //[_textName setText: [party getPartyName]]; // faced error since it is showing null, so i thought there might be the timing problem, where this is calling while at that time view has not been loaded, so, i decided to put this in viewdidload (Problem which we face while doing segues)

}

- (IBAction)saveParty:(id)sender {
    
    [_party setPartyName:_textName.text];
    [_party setPartyLocation:_textLocation.text];
    [_party setPartyTime:_textTime.text];
    
    NSLog(@"Party Created");
    
   // ListofPartiesTableViewController * lp = [[ListofPartiesTableViewController alloc]init];
    
    [self.navigationController popViewControllerAnimated:YES]; // sends us to the previous viewcontroller which we come from
}

- (IBAction)userDidLongPress:(id)sender {
    
    NSLog(@"Long Press Clicked"); 
}

- (IBAction)userSwipedLeft:(id)sender {
    
    NSLog(@"Swipped Left");
    
    [self performSegueWithIdentifier:@"showGuestList" sender:self]; // when swipped left it navigates to guestlist viewcontroller
}

// sending SMS and using its delegate protocols methods
- (IBAction)sendSms:(id)sender {
    
    if([MFMessageComposeViewController canSendText]) {
        
        MFMessageComposeViewController * vc = [[MFMessageComposeViewController alloc]init];
        
        vc.subject = @"This is Subject";
        vc.body = @"This is Body";
        
       // NSLog(@"cansendText value is %@", canSendText ? TRUE:FALSE);
        
        [self presentViewController:vc animated:YES completion:nil];
    }
    else {
        
        NSLog(@"Simulator doesn't support this");
    }
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

// sending Email and using its delegate protocols methods
- (IBAction)sendEmail:(id)sender {
    // MFMailComposeViewController is used to send to emails
    if([MFMailComposeViewController canSendMail]) {
        
        MFMailComposeViewController * vc = [[MFMailComposeViewController alloc]init];
        
        [self presentViewController:vc animated:YES completion:nil]; // Displays Email
    }
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error __OSX_AVAILABLE_STARTING(__MAC_NA,__IPHONE_3_0) {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

// Picking a Guest from Address Book by authorization conditions and using delegate protocols methods
- (IBAction)pickAGuest:(id)sender {
    
    if (ABAddressBookGetAuthorizationStatus() == kABAuthorizationStatusDenied ||
        ABAddressBookGetAuthorizationStatus() == kABAuthorizationStatusRestricted) {
        
        NSLog(@"AddressBook permission Access Denied");
    }
    else if (ABAddressBookGetAuthorizationStatus() == kABAuthorizationStatusAuthorized) {
        
        NSLog(@"AddressBook permission Access Authorized");
    }

    ABPeoplePickerNavigationController * vc = [[ABPeoplePickerNavigationController alloc]init];
    
    
    // we tell peoplepicker that this view controller has the protocol methods and this will receive events
    vc.peoplePickerDelegate = self;
    
    [self presentViewController:vc animated:YES completion:nil];
}

// Called after a person has been selected by the user.
- (void)peoplePickerNavigationController:(ABPeoplePickerNavigationController*)peoplePicker didSelectPerson:(ABRecordRef)person NS_AVAILABLE_IOS(8_0) {
    
    [self displayPerson:person];
    [self dismissViewControllerAnimated:YES completion:nil];
}

// Called after the user has pressed cancel.
- (void)peoplePickerNavigationControllerDidCancel:(ABPeoplePickerNavigationController *)peoplePicker {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void) displayPerson : (ABRecordRef)person {
    
    // bridge is a gap between objective C and C
    // ABRecordCopyValue is of CFTyperef object(Core Foundation), whenever we come across these objects we have to interact with C, hence we use bridge.
    // here, this bridge is known as Toll-Free Bridge
    NSString * name = (__bridge_transfer NSString *)ABRecordCopyValue(person, kABPersonFirstNameProperty);
    NSLog(@"Name Selected is %@", name);
    
    NSString * phoneNumber;
    // we are having more than 1 phone number in our contact list, since accessing more than one value, we must use ABMultiValueRef
    // here, we are not using bridge, since ABMultivalueRef is actually a CFTyperef
    ABMultiValueRef phoneNumbers = ABRecordCopyValue(person, kABPersonPhoneProperty);
    
    if (ABMultiValueGetCount(phoneNumbers) > 0) {
        
        NSLog(@"User is having a phone number");
        //here we are trying to access core foundation so we must bridge
        phoneNumber = (__bridge_transfer NSString *)ABMultiValueCopyValueAtIndex(phoneNumbers, 0);
    }
    else {
        
        NSLog(@"User don't have phone number");
    }
    // core foundation is a C object, so garbage collector doesn't see this object, so we must release that by our own
    CFRelease(phoneNumbers);
}

- (IBAction)createACalenderEvent:(id)sender {
}

- (IBAction)postToFacebook:(id)sender {
    
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        
        SLComposeViewController * vc = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        [vc setInitialText:@"I post to Facebook from my App"];
        
        [self presentViewController:vc animated:YES completion:nil];
    }
    else {
        
        NSLog(@"This cannot post to Facebook");
    }
}

- (IBAction)postToTwitter:(id)sender {
    
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        
        SLComposeViewController * vc = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        
        [vc setInitialText:@"I post to Twitter from my App"];
        
        [self presentViewController:vc animated:YES completion:nil];
    }
    else {
        
        NSLog(@"This cannot post to Twitter");
    }
}



-(void) refreshPartyDetails {
    
    NSLog(@"Name of the party is %@", [_party getPartyName]);
    [_textName setText: [_party getPartyName]];
    [_textLocation setText: [_party getPartyLocation]];
    [_textTime setText: [_party getPartyTime]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
