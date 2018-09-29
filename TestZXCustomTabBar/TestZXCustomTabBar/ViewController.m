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
                 @"selectImage" : @"http://pf8asqbgd.bkt.clouddn.com/icons8-download-select.png",
                 @"normalImage" : @"http://pf8asqbgd.bkt.clouddn.com/icons8-download.png",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"25*25",
                 @"selectImageSize" : @"40*40"
                 },
             @{
                 @"title" : @"222",
                 @"selectImage" : @"http://pf8asqbgd.bkt.clouddn.com/icons8-facebook-select.png",
                 @"normalImage" : @"http://pf8asqbgd.bkt.clouddn.com/icons8-facebook.png",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"25*25",
                 @"selectImageSize" : @"40*40"
                 },
             @{
                 @"title" : @"333",
                 @"selectImage" : @"http://pf8asqbgd.bkt.clouddn.com/icons8-home-select.png",
                 @"normalImage" : @"http://pf8asqbgd.bkt.clouddn.com/icons8-home.png",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"25*25",
                 @"selectImageSize" : @"40*40"
                 },
             @{
                 @"title" : @"444",
                 @"selectImage" : @"http://pf8asqbgd.bkt.clouddn.com/icons8-search-select.png",
                 @"normalImage" : @"http://pf8asqbgd.bkt.clouddn.com/icons8-search.png",
                 @"titleSelectColor" : @"E35A58",
                 @"titleNormalColor" : @"000000",
                 @"normalImageSize" : @"25*25",
                 @"selectImageSize" : @"40*40"
                 },
             @{
                 @"title" : @"555",
                 @"selectImage" : @"http://pf8asqbgd.bkt.clouddn.com/icons8-phone-select.png",
                 @"normalImage" : @"http://pf8asqbgd.bkt.clouddn.com/icons8-phone.png",
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
