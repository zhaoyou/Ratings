//
//  Player.h
//  Ratings
//
//  Created by zhaoyou on 5/26/15.
//  Copyright (c) 2015 zhaoyou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *game;
@property (nonatomic, assign) int rating;

@end
