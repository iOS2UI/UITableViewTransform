//
//  HomeController.m
//  HGTableViewTransform
//
//  Created by ZhuHong on 2018/4/11.
//  Copyright © 2018年 CoderHG. All rights reserved.
//

#import "HomeController.h"
#import "SlackTextController.h"
#import "CustomController.h"

@interface HomeController ()

@end

@implementation HomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.section == 0) {
        SlackTextController* stVC = [[SlackTextController alloc] init];
        [self.navigationController pushViewController:stVC animated:YES];
    } else {
        CustomController* csVC = [[CustomController alloc] init];
        // 是否倒叙
        csVC.inverted = (indexPath.row == 1);
        [self.navigationController pushViewController:csVC animated:YES];
    }
    
}

@end
