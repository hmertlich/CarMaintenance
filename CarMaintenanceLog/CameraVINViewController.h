//
//  CameraVINViewController.h
//  CarMaintenanceLog
//
//  Created by Hyrum Mertlich on 8/11/15.
//  Copyright (c) 2015 M Auto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@import AVFoundation;

@interface CameraVINViewController : UIViewController <AVCaptureMetadataOutputObjectsDelegate, AVAudioPlayerDelegate>

@property (strong, nonatomic) IBOutlet UIView *viewPreview;



@end
