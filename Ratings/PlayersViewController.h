//
//  PlayersViewController.h
//  Ratings
//
//  Created by zhaoyou on 5/26/15.
//  Copyright (c) 2015 zhaoyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"

@interface PlayersViewController : UITableViewController <PlayerDetailsViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray * players;

@end
