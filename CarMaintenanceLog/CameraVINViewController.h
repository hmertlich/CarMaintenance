//
//  CameraVINViewController.h
//  CarMaintenanceLog
//
//  Created by Hyrum Mertlich on 8/11/15.
//  Copyright (c) 2015 M Auto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface CameraVINViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *cameraCapture;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIButton *pictureButtonPressed;


@end
