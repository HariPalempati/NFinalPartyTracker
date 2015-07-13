//
//  LocationViewController.m
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 12/07/15.
//  Copyright (c) 2015 edu.newhaven.ios.hari. All rights reserved.
//

#import "LocationViewController.h"

@interface LocationViewController ()

@end

@implementation LocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _mapView.delegate = self;
    _mapView.showsUserLocation = YES; //shows user current location
    [_mapView setMapType:MKMapTypeHybrid];
    [_mapView setZoomEnabled:YES];
    [_mapView setScrollEnabled:YES];
    
    _locationManager = [[CLLocationManager alloc]init];
    _locationManager.delegate = self;
    [self.locationManager requestWhenInUseAuthorization];
    [self.locationManager requestAlwaysAuthorization];
    
    [self.locationManager startUpdatingLocation]; // turns GPS on

    
    
}
//
//- (void) updateMapByAddress : (NSString *) address {
//    
//    NSString * location  = address;
//    CLGeocoder * geocoder = [[CLGeocoder alloc]init];
//    
//}
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

- (IBAction)searchAddress:(id)sender {
}
@end
