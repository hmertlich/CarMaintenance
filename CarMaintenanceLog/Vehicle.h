//
//  Vehicle.h
//  CarMaintenanceLog
//
//  Created by Hyrum Mertlich on 8/27/15.
//  Copyright (c) 2015 M Auto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>


@interface Vehicle : PFObject<PFSubclassing>

@property (nonatomic, retain) NSDate * timeStamp;
@property (nonatomic, retain) NSString * make;
@property (nonatomic, retain) NSString * model;
@property (nonatomic, retain) NSNumber * year;
@property (nonatomic, retain) NSString * trim;
@property (nonatomic, retain) NSString * style;

- (instancetype) initWithDictionary:(NSDictionary *) dictionary;

+ (NSString *) parseClassName;

@end
