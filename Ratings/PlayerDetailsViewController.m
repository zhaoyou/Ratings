//
//  PlayerDetailsViewController.m
//  Ratings
//
//  Created by zhaoyou on 5/28/15.
//  Copyright (c) 2015 zhaoyou. All rights reserved.
//

#import "PlayerDetailsViewController.h"
#import "Player.h"
#import "GamePickerViewController.h"

@implementation PlayerDetailsViewController

NSString *_game;

-(id) initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSLog(@"PlayerDetailsViewContorller init...");
        _game = @"contra";
    }
    return self;
}

-(void) viewDidLoad
{
    [super viewDidLoad];
    self.detailLabel.text = _game;
}

-(IBAction) cancel:(id)sender
{
    [self.delegate playerDetailsViewControllerDidCancel:self];
}
-(IBAction) done:(id)sender
{
    Player *player = [[Player alloc]init];
    player.name = self.nameTextField.text;
    player.game = _game;
    player.rating = 1;
    [self.delegate playerDetailsViewControllerDidSave:self didAddPlayer:player];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        [self.nameTextField becomeFirstResponder];
    }
}


- (void)gamePickerViewController:(GamePickerViewController *)controller didSelectGame:(NSString *)game
{
    _game = game;
    self.detailLabel.text = _game;
    
    [self.navigationController popViewControllerAnimated:YES];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"PickerGame"]) {
        GamePickerViewController *vc = (GamePickerViewController *)segue.destinationViewController;
        vc.delegate = self;
        vc.game = _game;
    }
}


@end
