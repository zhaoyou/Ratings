//
//  GamePickerViewController.h
//  Ratings
//
//  Created by zhaoyou on 5/28/15.
//  Copyright (c) 2015 zhaoyou. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GamePickerViewController;

@protocol GamePickerViewControllerDelegate <NSObject>

- (void)gamePickerViewController:(GamePickerViewController *)controller didSelectGame:(NSString *)game;

@end

@interface GamePickerViewController : UITableViewController

@property (nonatomic , weak) id <GamePickerViewControllerDelegate> delegate;
@property (nonatomic, strong) NSString *game;

@end
