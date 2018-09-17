//
//  ViewController.m
//  TestZXCustomTabBar
//
//  Created by xu zhao on 2018/9/14.
//  Copyright © 2018年 zhaoxu. All rights reserved.
//

#import "ViewController.h"
#import "ZXCustomTabBar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ZXCustomTabBar *tabBar1 = [[ZXCustomTabBar alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 50) dataArray:[self type1]];
    tabBar1.backgroundColor = [UIColor colorWithHexString:@"dddddd"];
    [self.view addSubview:tabBar1];
    
    ZXCustomTabBar *tabBar2 = [[ZXCustomTabBar alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(tabBar1.frame) + 50, self.view.frame.size.width, 50) dataArray:[self type2]];
    tabBar2.backgroundColor = [UIColor colorWithHexString:@"FFFFFF"];
    [self.view addSubview:tabBar2];
    
    ZXCustomTabBar *tabBar3 = [[ZXCustomTabBar alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(tabBar2.frame) + 50, self.view.frame.size.width, 50) dataArray:[self type3]];
    tabBar3.backgroundColor = [UIColor colorWithHexString:@"C0C0C0"];
    [self.view addSubview:tabBar3];
    
    ZXCustomTabBar *tabBar4 = [[ZXCustomTabBar alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(tabBar3.frame) + 50, self.view.frame.size.width, 50) dataArray:[self type4]];
    tabBar4.backgroundColor = [UIColor colorWithHexString:@"FFFF00"];
    [self.view addSubview:tabBar4];
    
    ZXCustomTabBar *tabBar5 = [[ZXCustomTabBar alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(tabBar4.frame) + 50, self.view.frame.size.width, 50) dataArray:[self type5]];
    tabBar5.backgroundColor = [UIColor colorWithHexString:@"00FFFF"];
    [self.view addSubview:tabBar5];
    
}

- (NSArray *)type1{
    return @[
              @{
                  @"title" : @"111",
                  @"selectImage" : @"icons8-home-select",
                  @"normalImage" : @"icons8-home",
                  @"titleSelectColor" : @"E35A58",
                  @"titleNormalColor" : @"000000",
                  @"normalImageSize" : @"25*25",
                  @"selectImageSize" : @"40*40"
                  },
              @{
                  @"title" : @"222",
                  @"selectImage" : @"icons8-phone-select",
                  @"normalImage" : @"icons8-phone",
                  @"titleSelectColor" : @"E35A58",
                  @"titleNormalColor" : @"000000",
                  @"normalImageSize" : @"25*25",
                  @"selectImageSize" : @"40*40"
                  },
              @{
                  @"title" : @"333",
                  @"selectImage" : @"icons8-search-select",
                  @"normalImage" : @"icons8-search",
                  @"titleSelectColor" : @"E35A58",
                  @"titleNormalColor" : @"000000",
                  @"normalImageSize" : @"25*25",
                  @"selectImageSize" : @"40*40"
                  },
              @{
                  @"title" : @"444",
                  @"selectImage" : @"icons8-facebook-select",
                  @"normalImage" : @"icons8-facebook",
                  @"titleSelectColor" : @"E35A58",
                  @"titleNormalColor" : @"000000",
                  @"normalImageSize" : @"25*25",
                  @"selectImageSize" : @"40*40"
                  },
              @{
                  @"title" : @"555",
                  @"selectImage" : @"icons8-download-select",
                  @"normalImage" : @"icons8-download",
                  @"titleSelectColor" : @"E35A58",
                  @"titleNormalColor" : @"000000",
                  @"normalImageSize" : @"25*25",
                  @"selectImageSize" : @"40*40"
                  },
            ];
}


- (NSArray *)type2{
    return @[
             @{
                 @"title" : @"111",
                 @"selectImage" : @"icons8-home-select",
                 @"normalImage" : @"icons8-home",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"30*30",
                 @"selectImageSize" : @"50*50"
                 },
             @{
                 @"title" : @"222",
                 @"selectImage" : @"icons8-phone-select",
                 @"normalImage" : @"icons8-phone",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"50*50",
                 @"selectImageSize" : @"30*30"
                 },
             @{
                 @"title" : @"333",
                 @"selectImage" : @"icons8-search-select",
                 @"normalImage" : @"icons8-search",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"50*50",
                 @"selectImageSize" : @"30*30"
                 },
             @{
                 @"title" : @"444",
                 @"selectImage" : @"icons8-facebook-select",
                 @"normalImage" : @"icons8-facebook",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"50*50",
                 @"selectImageSize" : @"30*30"
                 },
             @{
                 @"title" : @"555",
                 @"selectImage" : @"icons8-download-select",
                 @"normalImage" : @"icons8-download",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"50*50",
                 @"selectImageSize" : @"30*30"
                 },
             ];
}

- (NSArray *)type3{
    return @[
             @{
                 @"title" : @"111",
                 @"selectImage" : @"icons8-home-select",
                 @"normalImage" : @"icons8-home",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"70*70",
                 @"selectImageSize" : @"40*40"
                 },
             @{
                 @"title" : @"222",
                 @"selectImage" : @"icons8-phone-select",
                 @"normalImage" : @"icons8-phone",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"20*20",
                 @"selectImageSize" : @"30*30"
                 },
             @{
                 @"title" : @"333",
                 @"selectImage" : @"icons8-search-select",
                 @"normalImage" : @"icons8-search",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"25*25",
                 @"selectImageSize" : @"40*40"
                 },
             @{
                 @"title" : @"444",
                 @"selectImage" : @"icons8-facebook-select",
                 @"normalImage" : @"icons8-facebook",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"25*25",
                 @"selectImageSize" : @"40*40"
                 },
             @{
                 @"title" : @"555",
                 @"selectImage" : @"icons8-download-select",
                 @"normalImage" : @"icons8-download",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"50*50",
                 @"selectImageSize" : @"30*30"
                 },
             ];
}

- (NSArray *)type4{
    return @[
             @{
                 @"title" : @"111",
                 @"selectImage" : @"http://m1.img.10010.com/resources/63E516FFDA114E0D31DEF646BE06F5E9/20180221/png/20180221234743.png",
                 @"normalImage" : @"http://m1.img.10010.com/resources/7188192A31B5AE06E41B64DA6D65A9B0/20170919/png/20170919152834.png",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"25*25",
                 @"selectImageSize" : @"40*40"
                 },
             @{
                 @"title" : @"222",
                 @"selectImage" : @"http://m1.img.10010.com/resources/63E516FFDA114E0D31DEF646BE06F5E9/20180221/png/20180221234852.png",
                 @"normalImage" : @"http://m1.img.10010.com/resources/0C5214C89700EF8C79DAB3CFD0EEE425/20180305/png/20180305102534.png",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"25*25",
                 @"selectImageSize" : @"40*40"
                 },
             @{
                 @"title" : @"333",
                 @"selectImage" : @"http://m1.img.10010.com/resources/7188192A31B5AE06E41B64DA6D65A9B0/20161108/png/20161108171246.png",
                 @"normalImage" : @"http://m1.img.10010.com/resources/0C5214C89700EF8C79DAB3CFD0EEE425/20180402/png/20180402142856.png",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"25*25",
                 @"selectImageSize" : @"40*40"
                 },
             @{
                 @"title" : @"444",
                 @"selectImage" : @"http://m1.img.10010.com/resources/7188192A31B5AE06E41B64DA6D65A9B0/20161026/png/20161026173746.png",
                 @"normalImage" : @"http://m1.img.10010.com/resources/7188192A31B5AE06E41B64DA6D65A9B0/20161026/png/20161026172853.png",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"25*25",
                 @"selectImageSize" : @"40*40"
                 },
             @{
                 @"title" : @"555",
                 @"selectImage" : @"http://m1.img.10010.com/resources/63E516FFDA114E0D31DEF646BE06F5E9/20180510/png/20180510170701.png",
                 @"normalImage" : @"http://m1.img.10010.com/resources/0C5214C89700EF8C79DAB3CFD0EEE425/20180131/png/20180131210531.png",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"25*25",
                 @"selectImageSize" : @"40*40"
                 },
             ];
}
- (NSArray *)type5{
    return @[
             @{
                 @"title" : @"111",
                 @"selectImage" : @"icons8-home-select",
                 @"normalImage" : @"icons8-home",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"25*25",
                 @"selectImageSize" : @"40*40"
                 },
             @{
                 @"title" : @"222",
                 @"selectImage" : @"icons8-phone-select",
                 @"normalImage" : @"icons8-phone",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"25*25",
                 @"selectImageSize" : @"40*40"
                 },
             @{
                 @"title" : @"333",
                 @"selectImage" : @"icons8-search-select",
                 @"normalImage" : @"icons8-search",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"25*25",
                 @"selectImageSize" : @"40*40"
                 },
             @{
                 @"title" : @"444",
                 @"selectImage" : @"icons8-facebook-select",
                 @"normalImage" : @"icons8-facebook",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"25*25",
                 @"selectImageSize" : @"40*40"
                 },
             @{
                 @"title" : @"555",
                 @"selectImage" : @"icons8-download-select",
                 @"normalImage" : @"icons8-download",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"25*25",
                 @"selectImageSize" : @"40*40"
                 },
             ];
}
@end
