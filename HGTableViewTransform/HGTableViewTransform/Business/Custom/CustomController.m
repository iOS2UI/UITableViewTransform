//
//  CustomController.m
//  HGTableViewTransform
//
//  Created by ZhuHong on 2018/4/11.
//  Copyright © 2018年 CoderHG. All rights reserved.
//

#import "CustomController.h"
#import "SlackTextCell.h"

@interface CustomController ()

@end

@implementation CustomController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 倒叙否
    self.tableView.transform = self.inverted ? CGAffineTransformMake(1, 0, 0, -1, 0, 0) : CGAffineTransformIdentity;
}

#pragma mark -
#pragma mark - UITableViewDelegate, UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // 获取 cell
    SlackTextCell* cell = [SlackTextCell cell:tableView];
    
    // 假装在这赋值
    cell.textLabel.text = [NSString stringWithFormat:@"%zd", indexPath.row];
    
    // Cells must inherit the table view's transform
    // This is very important, since the main table view may be inverted
    
    // 可以尝试着将这一句注释
    cell.transform = self.tableView.transform;
    
    // 返回 cell
    return cell;
}


@end
