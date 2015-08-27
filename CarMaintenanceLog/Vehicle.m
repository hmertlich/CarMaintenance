//
//  Vehicle.m
//  CarMaintenanceLog
//
//  Created by Hyrum Mertlich on 8/27/15.
//  Copyright (c) 2015 M Auto. All rights reserved.
//

#import "Vehicle.h"
#import <Parse/PFObject+Subclass.h>

@implementation Vehicle

+ (void) load {
    [self registerSubclass];
}

@dynamic timeStamp;
@dynamic make;
@dynamic model;
@dynamic year;
@dynamic trim;
@dynamic style;

+ (NSString *) parseClassName {
    return @"Vehicle";
}



@end
