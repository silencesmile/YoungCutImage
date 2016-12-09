//
//  YoungCutImage.h
//  521Travel_cutBigImage
//
//  Created by youngstar on 16/12/9.
//  Copyright © 2016年 521Travel.com. All rights reserved. 
 /*
 0     1    2    3
 ---------------------
 0  |0,0  |1,0| 2,0 | 3,0|
 ----------------------
 1  |0,1  |1,1| 2,1 | 3,1|
 ----------------------
 2  |0,2  |1,2| 2,2 | 3,2|
 ----------------------
 3  |0,3  |1,3| 2,3 | 3,3|
 ----------------------
 
 {
 (0,0) (1,0) (2,0) (3,0)
 
 (0,1) (1,1) (2,1) (3,1)
 
 (0,2) (1,2) (2,2) (3,2)
 
 (0,3) (1,3) (2,3) (3,3)
 }
 
 
 */
//

#import <UIKit/UIKit.h>

@interface YoungCutImage : UIViewController

#pragma mark X：横向第几个 Y：竖向第几个  wideCount：横向小图标的个数  heightCount：纵向小图标的个数
+(UIImage *)cutBigImageName:(NSString *)bigImageName wide_X:(CGFloat)X  heigh_Y:(CGFloat)Y wideCount:(CGFloat)wideCount heightCount:(CGFloat)heightCount;
@end
