//
//  VehicleEntryViewController.h
//  CarMaintenanceLog
//
//  Created by Hyrum Mertlich on 8/11/15.
//  Copyright (c) 2015 M Auto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Vehicle.h"

@interface NewVehicleViewController : UIViewController

@property (strong, nonatomic) Vehicle *vehicle;

@property (strong, nonatomic) IBOutlet UITextField *VINTextField;

@end
