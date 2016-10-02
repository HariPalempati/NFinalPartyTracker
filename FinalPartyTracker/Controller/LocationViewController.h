//
//  LocationViewController.h
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 12/07/15.
//  Copyright (c) 2015 edu.newhaven.ios.hari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface LocationViewController : UIViewController<MKMapViewDelegate,CLLocationManagerDelegate>

@property (strong, nonatomic) CLLocationManager * locationManager;
@property (weak, nonatomic) IBOutlet UITextField *textAddress;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)searchAddress:(id)sender;
@end
