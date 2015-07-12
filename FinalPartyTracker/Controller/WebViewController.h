//
//  WebViewController.h
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 12/07/15.
//  Copyright (c) 2015 edu.newhaven.ios.hari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

@property(strong, nonatomic) NSString * typeOfSearch;

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end
