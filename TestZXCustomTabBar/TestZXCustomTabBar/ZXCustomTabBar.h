//
//  SNMPBottomBar.h
//  MPTM
//
//  Created by zhaoxu on 2017/4/28.
//  Copyright © 2017年 Suning. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZXCustomTabBarItem.h"
#import "ZXCustomTabBar.h"

@protocol ZXCustomTabBarDelegate <NSObject>

- (void)didClickItemAtIndex:(NSInteger)index;

@end

@interface ZXCustomTabBar : UIView

@property (nonatomic, weak) id<ZXCustomTabBarDelegate> delegate;

@property (nonatomic, assign) NSInteger selectIndex;

@property (nonatomic, assign) NSInteger originIndex;

@property (nonatomic, assign) NSInteger lastIndex;

@property (nonatomic, assign) BOOL isInit;

- (instancetype)initWithFrame:(CGRect)frame dataArray:(NSArray *)dataArray;

/**
 缓存View

 @param index 对应的index
 @param view 需缓存的view
 */
- (void)cacheChildViewForIndex:(NSInteger)index view:(UIView *)view;

/**
 获取缓存

 @param index 对应的index
 @return 缓存里对应index的view
 */
- (UIView *)getChildViewInCacheWithIndex:(NSInteger)index;


/**
 清除所有缓存
 */
- (void)clearAllCache;


/**
 清除对应index的view缓存

 @param index 对应的位置
 */
- (void)clearCacheAtIndex:(NSInteger)index;

/**
 回到上一个选中的index--不会调用代理
 */
- (void)recoverLastIndex;

/**
 获取索引下的tab

 @param index 对应的index
 @return 索引位置下的tab
 */
- (ZXCustomTabBar *)getBottomBarWithIndex:(NSInteger)index;


@end
