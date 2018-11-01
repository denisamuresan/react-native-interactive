//
//  InteractablePoint.m
//  Interactable
//
//  Created by Tal Kol on 1/27/17.
//  Copyright © 2017 Wix. All rights reserved.
//

#import "InteractablePoint.h"

@implementation InteractablePoint

- (id)copyWithZone:(__unused NSZone *)zone
{
    InteractablePoint *another = [[InteractablePoint alloc] init];
    
    another.x = self.x;
    another.y = self.y;
    another.damping = self.damping;
    another.tension = self.tension;
    another.strength = self.strength;
    another.falloff = self.falloff;
    another.id = self.id;
    another.influenceArea = self.influenceArea;
    another.haptics = self.haptics;
    
    return another;
}

- (CGPoint)positionWithOrigin:(CGPoint)origin
{
    CGPoint res = origin;
    if (self.x != CGFLOAT_MAX) res.x += self.x;
    if (self.y != CGFLOAT_MAX) res.y += self.y;
    return res;
}

- (CGFloat)distanceFromPoint:(CGPoint)point withOrigin:(CGPoint)origin
{
    CGFloat dx = CGFLOAT_MAX;
    CGFloat dy = CGFLOAT_MAX;
    if (self.x != CGFLOAT_MAX) dx = point.x - (origin.x + self.x);
    if (self.y != CGFLOAT_MAX) dy = point.y - (origin.y + self.y);
    if (dx == CGFLOAT_MAX && dy == CGFLOAT_MAX) return CGFLOAT_MAX;
    if (dx == CGFLOAT_MAX) return ABS(dy);
    if (dy == CGFLOAT_MAX) return ABS(dx);
    return sqrt(dx*dx + dy*dy);
}

+ (CGPoint)deltaBetweenPoint:(CGPoint)point andOrigin:(CGPoint)origin
{
    return CGPointMake(point.x - origin.x, point.y - origin.y);
}

+ (InteractablePoint*)findClosestPoint:(NSArray<InteractablePoint *>*)points toPoint:(CGPoint)relativeToPoint withOrigin:(CGPoint)origin
{
    InteractablePoint *res = nil;
    CGFloat minDistance = CGFLOAT_MAX;
    for (InteractablePoint *point in points)
    {
        CGFloat distance = [point distanceFromPoint:relativeToPoint withOrigin:origin];
        if (distance < minDistance)
        {
            minDistance = distance;
            res = point;
        }
    }
    return res;
}

@end
