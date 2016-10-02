//
//  ListofPartiesTableViewController.m
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 6/07/15.
//  Copyright (c) 2015 edu.Sysintelli.ios.hari. All rights reserved.
//

#import "ListofPartiesTableViewController.h"
#import "PartyDetailViewController.h"
#import "AppDelegate.h"

@interface ListofPartiesTableViewController ()  {
    
    AppDelegate * appDel;
}

@end

@implementation ListofPartiesTableViewController

@synthesize myTableView = _myTableView;

//@synthesize aReference =_aReference;

- (void)viewDidLoad {
    [super viewDidLoad];

    appDel = [[UIApplication sharedApplication]delegate];
    
    //[self getData];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    NSLog(@"ViewDidLoad");
    
//    AppDelegate * appDel = (AppDelegate *)[[UIApplication sharedApplication] delegate];
//    
//    // this is telling us the description what this object is doing(attributes,...)
//    NSEntityDescription * partyDescription = [NSEntityDescription entityForName:@"ManagedParty" inManagedObjectContext:appDel.managedObjectContext];
//    
//    NSManagedObject * party1 = [[NSManagedObject alloc]initWithEntity:partyDescription insertIntoManagedObjectContext:appDel.managedObjectContext];
//    
//    // Creating Parties
//    
//    Party * p1;
//    p1 = [[Party alloc]init];
//    [p1 initWithPartyName:@"BirthDay"];
//    
//    Party * p2;
//    p2 = [[Party alloc]init];
//    [p2 initWithPartyName:@"Wedding"];
//    
//    Party * p3;
//    p3 = [[Party alloc]init];
//    [p3 initWithPartyName:@"Graduation"];
//    
//    _parties = [[NSMutableArray alloc]initWithObjects:p1, p2, p3 ,nil]; // parties are added to the Array
    
    NSLog(@"Parties are added to the Array");
    NSLog(@"Number of Parties are %lu", [_parties count]); // For Arrays we need to use long unsigned as formatt specifier
    
    //    [_parties addObject:p1];
    //     ,p2,p3,nil];

}

//- (IBAction)saveParty:(id)sender {
//    
//    ManagedParty * objParty = [NSEntityDescription insertNewObjectForEntityForName:@"ManagedParty" inManagedObjectContext:appDel.managedObjectContext];
//    
//    objParty.partyName = _textName.text;
//    objParty.partyLocation = _textLocation.text;
//    objParty.partyTime = _textTime.text;
//    objParty.guests = _labelGuests.text;
//    
//    NSError * error;
//    [appDel.managedObjectContext save:&error];
//    
//    if (error == nil) {
//        
//        [_myTableView reloadData];
//        //[self.aReference1.myTableView reloadData];
//    }
//    
//    //old
//    //    [_party setPartyName:_textName.text];
//    //    [_party setPartyLocation:_textLocation.text];
//    //    [_party setPartyTime:_textTime.text];
//    //
//    //    NSLog(@"Party Created");
//    //
//    //   // ListofPartiesTableViewController * lp = [[ListofPartiesTableViewController alloc]init];
//    //
//    //    [self.navigationController popViewControllerAnimated:YES]; // sends us to the previous viewcontroller which we come from
//}
//- (void) getData {
//    
//    NSFetchRequest * request = [NSFetchRequest fetchRequestWithEntityName:@"ManagedParty"];
//    
//    NSError * error;
//    NSArray * result = [appDel.managedObjectContext executeFetchRequest:request error:&error];
//    
//    if (error == nil) {
//        
//        [_parties removeAllObjects];
//        [_parties addObjectsFromArray:result];
//        
//        [_myTableView reloadData];
//        
//        //        [self.aReference1.parties removeAllObjects];
//        //        [self.aReference1.parties addObjectsFromArray:result];
//        //
//        //        [self.aReference1.myTableView reloadData];
//    }
//}

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
  
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    
    ManagedParty * objParty = [[ManagedParty alloc]init];
    
    cell.textLabel.text = objParty.partyName;
    
    //old
//    // Configure the cell...
//    NSString * celltext;
//    celltext = [[_parties objectAtIndex:indexPath.row] getPartyName]; //iterates everytime, gets to the new row and it gets value from getter (this method will call everytime for every cell)
//    NSLog(@"cell text is %@", celltext);
//    [[cell textLabel] setText:celltext]; // we need to enter reuseidentity in storyboard, then only this works (identity here is "cell")
//    //[cell se]
    
    
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
    
    if ([[segue identifier] isEqual:@"newParty"]) {
        
        PartyDetailViewController * vc = segue.destinationViewController; 
    }
}



-(IBAction)unwindFromPartyDetail:(UIStoryboardSegue*)segue {
    
    PartyDetailViewController * vc = segue.sourceViewController;
}


- (NSManagedObjectContext *)managedObjectContext
{
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    // Fetch the devices from persistent data store
    NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"ManagedParty"];
    self.parties = [[managedObjectContext executeFetchRequest:fetchRequest error:nil] mutableCopy];
    
    [self.tableView reloadData];
}

@end
