//
//  GLICoordinateRegion.h
//  Quakes
//
//  Created by Julian A. Fordyce on 4/2/19.
//  Copyright © 2019 Julian A. Fordyce. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GLICoordinateRegion : NSObject

- (instancetype)initWithMinLongitude:(double)minLongitude
                         minLatitude:(double)minLatitude
                        maxLongitude:(double)maxLongitude
                         maxLatitude:(double)maxLatitude;

- (instancetype)initWithMapRect:(MKMapRect)mapRect;

@property (nonatomic) double minLongitude;
@property (nonatomic) double minLatitude;
@property (nonatomic) double maxLongitude;
@property (nonatomic) double maxLatitude;

@end

NS_ASSUME_NONNULL_END
