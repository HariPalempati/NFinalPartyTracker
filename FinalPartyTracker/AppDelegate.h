//
//  AppDelegate.h
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 6/07/15.
//  Copyright (c) 2015 edu.newhaven.ios.hari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

// This is coredata which contains all our managed objects
@property (readonly, strong, nonatomic) NSManagedObjectContext * managedObjectContext;

// This is info about our managed objects (what are the attributes,relationships,...)
@property (readonly, strong, nonatomic) NSManagedObjectModel * managedObjectModel;

// This is what manages the changes that happen in our coredata
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator * persistentStoreCoordinator;

//Method to save our context
-(void) saveContext;
-(NSURL *) applicationDocumentsDirectory;


@end


// Event kit interacts with calender
// The Address Book framework provides access to the contact information
// The Address Book UI framework provides the user interface to display the information

// Ask about
//  pin
//  #what are the uses of other properties and methods
//  [self presentViewController:picker animated:YES completion:nil];
//  LOT OF WARNINGS