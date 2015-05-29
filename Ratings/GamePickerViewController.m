//
//  GamePickerViewController.m
//  Ratings
//
//  Created by zhaoyou on 5/28/15.
//  Copyright (c) 2015 zhaoyou. All rights reserved.
//

#import "GamePickerViewController.h"

@implementation GamePickerViewController

NSMutableArray *_games;
NSUInteger _selectIndex;



-(void) viewDidLoad
{
    [super viewDidLoad];
    _games = @[@"Angry Birds",
               @"Chess",
               @"Russian Roulette",
               @"Spin the Bottle",
               @"Texas Hold'em Poker",
               @"Tic-Tac-Toe"];
    _selectIndex = [_games indexOfObject:self.game];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [_games count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GameCell" forIndexPath:indexPath];
    
    if (indexPath.row == _selectIndex) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    // Configure the cell...
    cell.textLabel.text = _games[indexPath.row];
    return cell;
}

#pragma mark Table DataDelegate

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    // 去掉选中的
    if (_selectIndex != indexPath.row) {
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:_selectIndex inSection:0]];
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    // 保存当前选中的。
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    _selectIndex = indexPath.row;
    
    NSString *name= [_games objectAtIndex:indexPath.row];
    
    [self.delegate gamePickerViewController:self didSelectGame:name];
}


@end
