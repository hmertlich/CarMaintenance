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

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    if (self) {
        if (dictionary[@"timeStamp"]) {
            self.timeStamp = dictionary[@"timeStamp"];
        }
        
        if (dictionary[@"make"]) {
            self.make = dictionary[@"make"];
        }
        
        if (dictionary[@"model"]) {
            self.model = dictionary[@"model"];
        }
        
        if (dictionary[@"year"]) {
            self.year = dictionary[@"year"];
        }
        
        if (dictionary[@"trim"]) {
            self.trim = dictionary[@"trim"];
        }
        
        if (dictionary[@"style"]) {
            self.style = dictionary[@"style"];
        }
    }
    return self;
}

@end
