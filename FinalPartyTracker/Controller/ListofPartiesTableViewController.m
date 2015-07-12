//
//  ListofPartiesTableViewController.m
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 6/07/15.
//  Copyright (c) 2015 edu.Sysintelli.ios.hari. All rights reserved.
//

#import "ListofPartiesTableViewController.h"
#import "PartyDetailViewController.h"

@interface ListofPartiesTableViewController ()

@end

@implementation ListofPartiesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    NSLog(@"ViewDidLoad");
    
    // Creating Parties
    
    Party * p1;
    p1 = [[Party alloc]init];
    [p1 initWithPartyName:@"BirthDay"];
    
    Party * p2;
    p2 = [[Party alloc]init];
    [p2 initWithPartyName:@"Wedding"];
    
    Party * p3;
    p3 = [[Party alloc]init];
    [p3 initWithPartyName:@"Graduation"];
    
    _parties = [[NSMutableArray alloc]initWithObjects:p1, p2, p3 ,nil]; // parties are added to the Array
    
    NSLog(@"Parties are added to the Array");
    NSLog(@"Number of Parties are %lu", [_parties count]); // For Arrays we need to use long unsigned as formatt specifier
    
    //    [_parties addObject:p1];
    //     ,p2,p3,nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //#warning Incomplete method implementation. // we can create our own warnings like this.
    // Return the number of rows in the section.
    return [_parties count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    NSString * celltext;
    celltext = [[_parties objectAtIndex:indexPath.row] getPartyName]; //iterates everytime, gets to the new row and it gets value from getter (this method will call everytime for every cell)
    NSLog(@"cell text is %@", celltext);
    [[cell textLabel] setText:celltext]; // we need to enter reuseidentity in storyboard, then only this works (identity here is "cell")
    //[cell se]
    
    
    return cell;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if([[segue identifier] isEqual:@"editParty"]) { // I have given a name for the segue in story board
        
        PartyDetailViewController * vc = segue.destinationViewController; // this is the destination viewcontroller we are going to (PartyDetailViewController), since we have to pass our data to it.
        Party * p = [[Party alloc]init]; // this is for the party which we tap on
        
        NSLog(@"The selected row is %lu", self.myTableView.indexPathForSelectedRow.row); // it goes to our tableview and then the property indexpathforselectedrow will gives the index
        
        p = [_parties objectAtIndex:self.myTableView.indexPathForSelectedRow.row];
        
        vc.party = p;
        
    }
}

-(IBAction)unwindFromPartyDetail:(UIStoryboardSegue*)segue {
    
    PartyDetailViewController * vc = segue.sourceViewController;
}

@end
