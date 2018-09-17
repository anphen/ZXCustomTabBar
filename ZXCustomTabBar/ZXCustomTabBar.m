//
//  SNMPBottomBar.m
//  MPTM
//
//  Created by zhaoxu on 2017/4/28.
//  Copyright © 2017年 Suning. All rights reserved.
//

#import "ZXCustomTabBar.h"
#import <Masonry.h>

@interface ZXCustomTabBar()<ZXCustomTabBarItemDelegate>

@property (nonatomic, strong) NSMutableArray *itemArray;
@property (nonatomic, strong) NSMutableDictionary *childViewCache;

@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation ZXCustomTabBar

- (instancetype)initWithFrame:(CGRect)frame dataArray:(NSArray *)dataArray{
    self = [super initWithFrame:frame];
    if (self) {
        _isInit = YES;
        _childViewCache = [[NSMutableDictionary alloc]init];
        _itemArray = [NSMutableArray array];
        _lastIndex = 0;
        _selectIndex = 0;
        _originIndex = 0;
        NSMutableArray *array = [NSMutableArray array];
        for (NSDictionary * item in dataArray) {
            ItemStyleObject *itemObject = [[ItemStyleObject alloc]initWithDictionary:item];
            [array addObject:itemObject];
        }
        _dataArray = array;
        [self setUpUI];
    }
    return self;
}

- (void)setUpUI{
    [self creatButtomBarItem];
    [self setSelectIndex:_originIndex];
}

- (void)creatButtomBarItem{
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    for (int i = 0; i < self.dataArray.count; i++) {
//        SNMPTMCMSModuleDTO *dto = [self.dataArray safeObjectAtIndex:i];
        ZXCustomTabBarItem *item = [[ZXCustomTabBarItem alloc]initWithItem:[self.dataArray objectAtIndex:i]];
        [self.itemArray addObject:item];
        item.delegate = self;
        item.tag = 11000 + i;
        [self addSubview:item];
    }
    
    if (self.subviews.count == 0 ||self.subviews.count == 1) {
        return;
    }
    
    [self.subviews mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:0 leadSpacing:0 tailSpacing:0];
    
    [self.subviews mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(0);
    }];
    UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, 0.5)];
    lineView.backgroundColor = [UIColor colorWithRed:0.87 green:0.87 blue:0.87 alpha:1.00];
    [self insertSubview:lineView atIndex:0];
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.mas_equalTo(0);
        make.height.mas_equalTo(0.5);
    }];
}

#pragma mark - ZXCustomTabBarItemDelegate

- (void)barItemDidClick:(ZXCustomTabBar *)barItem{
    NSInteger currentIndex = barItem.tag - 11000;
    [self setSelectIndex:currentIndex];
}

- (void)setSelectIndex:(NSInteger)selectIndex{
    if (_selectIndex == selectIndex && !self.isInit) {
        return;
    }
    if (selectIndex >= self.itemArray.count) {
        return;
    }
    ZXCustomTabBarItem *lastBarItem = [self.itemArray objectAtIndex:_selectIndex];
    lastBarItem.select = NO;
    ZXCustomTabBarItem *currentBarItem = [self.itemArray objectAtIndex:selectIndex];
    currentBarItem.select = YES;
    
    _lastIndex = _selectIndex;
    _selectIndex = selectIndex;
    
    if ([self.delegate respondsToSelector:@selector(didClickItemAtIndex:)]) {
        [self.delegate didClickItemAtIndex:selectIndex];
    }
    self.isInit = NO;
}

- (void)clearAllCache{
    if (self.childViewCache) {
        [self.childViewCache removeAllObjects];
    }
    else{
        self.childViewCache = [[NSMutableDictionary alloc]init];
    }
    _isInit = YES;
    _lastIndex = 0;
    _selectIndex = 0;
    _originIndex = 0;
}

- (void)clearCacheAtIndex:(NSInteger)index{
    NSString *indexString = [NSString stringWithFormat:@"%li", (long)index];
    [self.childViewCache removeObjectForKey:indexString];
}

- (void)cacheChildViewForIndex:(NSInteger)index view:(UIView *)view
{
    if (!view) {
        return;
    }
    NSString *indexString = [NSString stringWithFormat:@"%li", (long)index];
    [self.childViewCache setValue:view forKey:indexString];
    
    [self.childViewCache enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        if (![key isEqualToString:indexString]) {
            if ([obj isKindOfClass:[UIView class]]) {
                [(UIView *)obj removeFromSuperview];
            }
        }
    }];
}

- (UIView *)getChildViewInCacheWithIndex:(NSInteger)index
{
    NSString *indexString = [NSString stringWithFormat:@"%li", (long)index];
    UIView *view = [self.childViewCache valueForKey:indexString];
    return view;
}

- (void)recoverLastIndex{
    ZXCustomTabBarItem *lastBarItem = [self.itemArray objectAtIndex:self.lastIndex];
    lastBarItem.select = YES;
    ZXCustomTabBarItem *currentBarItem = [self.itemArray objectAtIndex:self.selectIndex];
    currentBarItem.select = NO;
    NSInteger tempIndex = self.selectIndex;
    self.selectIndex = self.lastIndex;
    self.lastIndex = tempIndex;
}

/**
 获取索引下的tab

 @param index 对应的index
 @return 索引位置下的tab
 */
- (ZXCustomTabBar *)getBottomBarWithIndex:(NSInteger)index{
    return [self.itemArray objectAtIndex:index];
}


- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    for (UIView *subview in [self.subviews reverseObjectEnumerator]) {
        CGPoint convertedPoint = [subview convertPoint:point fromView:self];
        BOOL pointInside = [subview pointInside:convertedPoint withEvent:event];
        if (pointInside) {
            return YES;
        }
    }
    return NO;
}


@end
