//
//  WebViewController.m
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 12/07/15.
//  Copyright (c) 2015 edu.newhaven.ios.hari. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self webSearch];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) webSearch {
    
    NSURL * url = [NSURL URLWithString:@"http://www.google.com"]; // creating url
    
    NSLog(@"Current Url is %@", url.path);
    
//    if ([_typeOfSearch isEqualToString:@"googleSearch"]) {
//        
//        url = [NSURL URLWithString:@"http://www.google.com"];
//    }
//    else {
//        
//        url = [NSURL URLWithString:@"http://www.yahoo.com"];
//    }
    
    NSURLRequest * request = [[NSURLRequest alloc]initWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:30];
    [_webView loadRequest:request];
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
