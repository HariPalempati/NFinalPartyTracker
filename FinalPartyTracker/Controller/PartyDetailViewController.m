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
