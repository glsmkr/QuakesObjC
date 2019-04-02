//
//  GLIQuake.m
//  Quakes
//
//  Created by Julian A. Fordyce on 4/2/19.
//  Copyright © 2019 Julian A. Fordyce. All rights reserved.
//

#import "GLIQuake.h"

@implementation GLIQuake

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        
        _identifier = [dictionary objectForKey:@"id"];
        _magnitude = [dictionary[@"properties"][@"mag"] doubleValue];
        _place = dictionary[@"proprties"][@"string"];
        
        
        long timeStampInMilliseconds = [dictionary[@"properties"][@"time"] longValue];
        NSTimeInterval timeStampInSeconds = (NSTimeInterval)timeStampInMilliseconds / 1000.0;
        _time = [NSDate dateWithTimeIntervalSince1970:timeStampInSeconds];
        _alert = dictionary[@"properties"][@"alert"];
        
        NSArray *coordinatesArray = dictionary[@"geometry"][@"coordinates"];
        CLLocationDegrees longitude = [coordinatesArray[0] doubleValue];
        CLLocationDegrees latitude = [coordinatesArray[1] doubleValue];
        _location = CLLocationCoordinate2DMake(latitude, longitude); 
        
    }
    
    return self;
}

@end
