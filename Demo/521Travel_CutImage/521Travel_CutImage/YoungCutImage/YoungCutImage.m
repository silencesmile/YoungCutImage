//
//  YoungCutImage.m
//  521Travel_cutBigImage
//
//  Created by youngstar on 16/12/9.
//  Copyright © 2016年 521Travel.com. All rights reserved.
//

#import "YoungCutImage.h"

@interface YoungCutImage ()

@end

@implementation YoungCutImage

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     使用方法 
     001、导入 #import "YoungCutImage.h"
     002、直接调用类方法
     
     */
}

+(UIImage *)cutBigImageName:(NSString *)bigImageName wide_X:(CGFloat)X  heigh_Y:(CGFloat)Y wideCount:(CGFloat)wideCount heightCount:(CGFloat)heightCount
{
    
    if (X > wideCount - 1 | Y > heightCount - 1) {
        NSLog(@"sorry,在YoungCreate中越界了！！！");
        return 0;
    }
    // 从大图片裁剪对应的小图片
    UIImage *bigImage = [UIImage imageNamed:bigImageName];
    
    // 伸缩属性
    NSLog(@"伸缩了%f倍", [UIScreen mainScreen].scale) ;
    
    //    CGFloat smallW = bigImage.size.width / 3 * [UIScreen mainScreen].scale;
    //    CGFloat smallH = bigImage.size.height / 8 * [UIScreen mainScreen].scale;
    
    CGFloat smallW = bigImage.size.width / wideCount ;
    CGFloat smallH = bigImage.size.height / heightCount ;
    
    CGRect smallRect = CGRectMake(smallW * X, smallH * Y, smallW, smallH);
    
    // CGImageCreateWithImageInRect  该方法只认像素  uikit里是点像素
    CGImageRef smallImageRef = CGImageCreateWithImageInRect(bigImage.CGImage, smallRect);
    
    UIImage* smallImage = [UIImage imageWithCGImage: smallImageRef];
    return smallImage;
}

@end
