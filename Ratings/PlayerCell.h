//
//  PlayerCell.h
//  Ratings
//
//  Created by zhaoyou on 5/28/15.
//  Copyright (c) 2015 zhaoyou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) IBOutlet UILabel *gameLabel;
@property (nonatomic, strong) IBOutlet UIImageView *ratingImageView;
@end
