//
//  ViewController.m
//  521Travel_CutImage
//
//  Created by youngstar on 16/12/9.
//  Copyright © 2016年 521Travel.com. All rights reserved.
//

#import "ViewController.h"
#import "YoungCutImage.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.frame];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.tableFooterView = [[UIView alloc]init];
    [self.view addSubview:_tableView];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    cell.textLabel.text = [NSString stringWithFormat:@"第%ld个", (long)indexPath.row];
    UIImage *bankImage = [YoungCutImage cutBigImageName:@"BankList" wide_X:0 heigh_Y:indexPath.row wideCount:1 heightCount:3];
    cell.imageView.image = bankImage;
    
//    cell.imageView.image = [UIImage imageNamed:@"BankList"];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
