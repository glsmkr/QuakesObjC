//
//  GLIQuake.h
//  Quakes
//
//  Created by Julian A. Fordyce on 4/2/19.
//  Copyright © 2019 Julian A. Fordyce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GLIQuake : NSObject

// init
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;



// assign = primatives
// atomic = default (getter or setter is run as a unit)

@property (nonatomic, copy, readonly) NSString *identifier;

@property (nonatomic, readonly) double magnitude;
@property (nonatomic, copy, readonly) NSString *place;
@property (nonatomic, readonly) NSDate *time;
@property (nonatomic, copy, readonly) NSString *alert;
@property (nonatomic, readonly) CLLocationCoordinate2D location;


@end

NS_ASSUME_NONNULL_END
