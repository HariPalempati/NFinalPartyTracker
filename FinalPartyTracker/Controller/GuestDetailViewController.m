//
//  GuestDetailViewController.m
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 6/07/15.
//  Copyright (c) 2015 edu.Sysintelli.ios.hari. All rights reserved.
//

#import "GuestDetailViewController.h"

@interface GuestDetailViewController ()

@end

@implementation GuestDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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


//// saving data to file and loading from file
//- (IBAction)loadFromFile:(id)sender {
//    
//    NSFileManager * fileManager = [NSFileManager new];
//    
//    NSError * error;
//    
//    NSURL * docURL = [fileManager URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:YES error:&error];
//    
//    NSURL * myFolder = [docURL URLByAppendingPathComponent:@"Guests"];
//    
//    NSString * stringFromFileAtURL = [[NSString alloc]initWithContentsOfURL:[myFolder URLByAppendingPathComponent:@"guest1.txt"] encoding:NSUTF8StringEncoding error:&error];
//    
//    [_textName setText:stringFromFileAtURL];
//    
//    NSLog(@"loading from file successfull");
//}
//
//- (IBAction)saveToFile:(id)sender {
//    
//    NSFileManager * fileManager = [NSFileManager new];
//    
//    NSError * error; // placeholder to hold error
//    
//    NSURL * docURL = [fileManager URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:YES error:&error];
//    
//    NSURL * myFolder = [docURL URLByAppendingPathComponent:@"Guests"];
//    
//    BOOL isDirectory;
//    
//    if ([fileManager fileExistsAtPath:[myFolder path] isDirectory:&isDirectory] && isDirectory) {
//        
//        NSLog(@"Directory already exists");
//    }
//    else {
//        
//        NSLog(@"Directory Doesm't exists, Please create it");
//        
//        //Creating Directory
//        [fileManager createDirectoryAtURL:myFolder withIntermediateDirectories:YES attributes:nil error:nil];
//    }
//    
//    
////    BOOL ok = [_textName.text writeToURL:myFolder atomically:YES encoding:NSUTF8StringEncoding error:&error]; // this is saving to folder
//
//    NSLog(@"Directory Created");
//    BOOL ok = [_textName.text writeToURL:[myFolder URLByAppendingPathComponent:@"guest1.txt"] atomically:YES encoding:NSUTF8StringEncoding error:&error]; // this is saving to file
//    
//    if (ok) {
//        NSLog(@"Writing to file successfull");
//    }
//    else {
//        NSLog(@"Writing to file failed");
//    }
//}
@end
