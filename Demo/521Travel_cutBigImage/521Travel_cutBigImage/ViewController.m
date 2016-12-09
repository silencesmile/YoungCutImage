//
//  ViewController.m
//  521Travel_cutBigImage
//
//  Created by youngstar on 16/12/9.
//  Copyright © 2016年 521Travel.com. All rights reserved.
//

#import "ViewController.h"
#import "YoungCutImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    button.frame = CGRectMake(50, 200, 100, 35);
    
    UIImage *smallImage = [YoungCutImage cutBigImageName:@"Bank" wide_X:2 heigh_Y:2 wideCount:3 heightCount:6];
    [button setImage:smallImage forState:(UIControlStateNormal)];
    [self.view addSubview:button];
    
    
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:( CGRectMake(50, 300, 100, 35))];
    imageView.image = [YoungCutImage cutBigImageName:@"Bank" wide_X:0 heigh_Y:2 wideCount:3 heightCount:6];
    
    [self.view addSubview:imageView];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
