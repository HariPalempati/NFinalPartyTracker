//
//  PicturesViewController.h
//  FinalPartyTracker
//
//  Created by Hari Krishna Palempati on 12/07/15.
//  Copyright (c) 2015 edu.newhaven.ios.hari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface PicturesViewController : UIViewController<UIImagePickerControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *ImageView;

- (IBAction)takeAPicture:(id)sender;
- (IBAction)viewPictures:(id)sender;
@end
