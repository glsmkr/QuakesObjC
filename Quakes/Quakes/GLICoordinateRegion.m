//
//  GLICoordinateRegion.m
//  Quakes
//
//  Created by Julian A. Fordyce on 4/2/19.
//  Copyright © 2019 Julian A. Fordyce. All rights reserved.
//

#import "GLICoordinateRegion.h"

@implementation GLICoordinateRegion

- (instancetype)initWithMinLongitude:(double)minLongitude
                         minLatitude:(double)minLatitude
                        maxLongitude:(double)maxLongitude
                         maxLatitude:(double)maxLatitude
{
    self = [super init];
    if (self) {
        _minLongitude = minLongitude;
        _minLatitude = minLatitude;
        _maxLongitude = maxLongitude;
        _maxLatitude = maxLatitude;
    }
    return self;
}

- (instancetype)initWithMapRect:(MKMapRect)mapRect
{
    MKCoordinateRegion region = MKCoordinateRegionForMapRect(mapRect);
    double minLongitude = region.center.longitude - region.span.longitudeDelta/2.0;
    double minLatitude = region.center.latitude - region.span.latitudeDelta/2.0;
    double maxLongitude = region.center.longitude + region.span.longitudeDelta/2.0;
    double maxLatitude = region.center.latitude +  region.span.latitudeDelta/2.0;
    return [self initWithMinLongitude:minLongitude minLatitude:minLatitude maxLongitude:maxLongitude maxLatitude:maxLatitude];
}


@end
