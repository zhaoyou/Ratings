//
//  PlayerDetailsViewController.h
//  Ratings
//
//  Created by zhaoyou on 5/28/15.
//  Copyright (c) 2015 zhaoyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
#import "GamePickerViewController.h"


@class PlayerDetailsViewController;

@protocol PlayerDetailsViewControllerDelegate <NSObject>
- (void)playerDetailsViewControllerDidCancel:(PlayerDetailsViewController *)controller;
- (void)playerDetailsViewControllerDidSave:(PlayerDetailsViewController *)controller didAddPlayer: (Player *)player;
@end


@interface PlayerDetailsViewController : UITableViewController <GamePickerViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (nonatomic, weak) id<PlayerDetailsViewControllerDelegate> delegate;

-(IBAction) cancel:(id)sender;
-(IBAction) done:(id)sender;

@end
