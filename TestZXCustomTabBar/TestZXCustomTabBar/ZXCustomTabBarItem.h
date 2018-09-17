//
//  ZXCustomTabBarItem.h
//  MPTM
//
//  Created by zhaoxu on 2017/4/28.
//  Copyright © 2017年 Suning. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ZXColorFundation)

+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;

@end

@interface ItemStyleObject : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *selectImage;
@property (nonatomic, copy) NSString *normalImage;
@property (nonatomic, copy) NSString *titleSelectColor;
@property (nonatomic, copy) NSString *titleNormalColor;
@property (nonatomic, copy) NSString *normalImageSize;//width*height
@property (nonatomic, copy) NSString *selectImageSize;//width*height

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

- (CGSize)ZXNormalImageSize;

- (CGSize)ZXSelectImageSize;

@end

@class ZXCustomTabBarItem;
@protocol ZXCustomTabBarItemDelegate <NSObject>

- (void)barItemDidClick:(ZXCustomTabBarItem *)barItem;

@end

@interface ZXCustomTabBarItem : UIView

@property (nonatomic, weak) id<ZXCustomTabBarItemDelegate> delegate;

- (instancetype)initWithItem:(ItemStyleObject *)item;

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, assign) BOOL select;

@end
