//
//  ZXCustomTabBarItem.m
//  MPTM
//
//  Created by zhaoxu on 2017/4/28.
//  Copyright © 2017年 Suning. All rights reserved.
//

#import "ZXCustomTabBarItem.h"
#import <Masonry.h>
#import <UIImageView+WebCache.h>

#define ZXDefaultImageSize CGSizeMake(25, 25);

@implementation ItemStyleObject

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        _title = [dictionary valueForKey:@"title"]?:@"";
        _normalImage = [dictionary valueForKey:@"normalImage"]?:@"";
        _selectImage = [dictionary valueForKey:@"selectImage"]?:@"";
        _titleSelectColor = [dictionary valueForKey:@"titleSelectColor"]?:@"e21f25";
        _titleNormalColor = [dictionary valueForKey:@"titleNormalColor"]?:@"444444";
        _normalImageSize = [dictionary valueForKey:@"normalImageSize"]?:@"";
        _selectImageSize = [dictionary valueForKey:@"selectImageSize"]?:@"";
    }
    return self;
}

- (CGSize)ZXNormalImageSize{
    if ([self.normalImageSize containsString:@"*"]) {
        NSArray *sizeArray = [self.normalImageSize componentsSeparatedByString:@"*"];
        if (sizeArray.count == 2) {
            CGFloat width = [sizeArray[0] floatValue];
            CGFloat height = [sizeArray[1] floatValue];
            return CGSizeMake(width, height);
        }
    }
    return ZXDefaultImageSize;
}

- (CGSize)ZXSelectImageSize{
    if ([self.selectImageSize containsString:@"*"]) {
        NSArray *sizeArray = [self.selectImageSize componentsSeparatedByString:@"*"];
        if (sizeArray.count == 2) {
            CGFloat width = [sizeArray[0] floatValue];
            CGFloat height = [sizeArray[1] floatValue];
            return CGSizeMake(width, height);
        }
        
    }
    return ZXDefaultImageSize;
}

- (NSString *)titleNormalColor{
    if (!_titleNormalColor) {
        return @"444444";
    }
    return _titleNormalColor;
}
- (NSString *)titleSelectColor{
    if (!_titleSelectColor) {
        return @"e21f25";
    }
    return _titleSelectColor;
}

@end

@implementation UIColor(ZXColorFundation)

+ (UIColor *)colorWithRGBHex:(UInt32)hex
{
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;
    
    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)colorWithHexString:(NSString *)stringToConvert{
    NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor clearColor];
    
    NSScanner *scanner = [NSScanner scannerWithString:cString];
    unsigned hexNum;
    if (![scanner scanHexInt:&hexNum]) return nil;
    return [UIColor colorWithRGBHex:hexNum];
}

@end

@interface ZXCustomTabBarItem()

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *normalImage;
@property (nonatomic, copy) NSString *selectImage;
@property (nonatomic, copy) NSString *typeString;
@property (nonatomic, strong) MASConstraint *widthConstraint;
@property (nonatomic, strong) MASConstraint *heightConstraint;

@property (nonatomic, strong) ItemStyleObject *item;

@end

@implementation ZXCustomTabBarItem

- (instancetype)initWithItem:(ItemStyleObject *)item
{
    self = [super init];
    if (self) {
        _item = item;
        [self setupUI];
        [self setSelect:NO];
    }
    return self;
}

- (void)setupUI{
    _label = [[UILabel alloc]init];
    _label.textColor  =[UIColor colorWithHexString:self.item.titleNormalColor];
    _label.font = [UIFont systemFontOfSize:10];
    _label.textAlignment = NSTextAlignmentCenter;
    _label.text = self.item.title;
    _imageView  = [[UIImageView alloc]init];
    _imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:self.imageView];
    [self addSubview:self.label];
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(10);
        make.left.right.mas_equalTo(0);
        make.bottom.mas_equalTo(-5);
    }];
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        self.heightConstraint = make.height.mas_equalTo([self.item ZXNormalImageSize].height);
        self.widthConstraint = make.width.mas_equalTo([self.item ZXNormalImageSize].width);
        make.centerX.mas_equalTo(self.mas_centerX);
        make.bottom.mas_equalTo(self.label.mas_top).offset(-4.5);
    }];
    [self addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didClick)]];

}

- (void)setSelect:(BOOL)select
{
    _select = select;
    if (select) {
        _label.textColor = [UIColor colorWithHexString:self.item.titleSelectColor];
        self.heightConstraint.mas_equalTo([self.item ZXSelectImageSize].height);
        self.widthConstraint.mas_equalTo([self.item ZXSelectImageSize].width);
        if ([self.item.selectImage hasPrefix:@"http"]) {
            [self.imageView sd_setImageWithURL:[NSURL URLWithString:self.item.selectImage]];
        }
        else{
            self.imageView.image = [UIImage imageNamed:self.item.selectImage];
        }
    }
    else{
        _label.textColor = [UIColor colorWithHexString:self.item.titleNormalColor];
        self.heightConstraint.mas_equalTo([self.item ZXNormalImageSize].height);
        self.widthConstraint.mas_equalTo([self.item ZXNormalImageSize].width);
        if ([self.item.normalImage hasPrefix:@"http"]) {
            [self.imageView sd_setImageWithURL:[NSURL URLWithString:self.item.normalImage]];
        }
        else{
            self.imageView.image = [UIImage imageNamed:self.item.normalImage];
        }
    }
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    CGPoint convertedPoint = [self.imageView convertPoint:point fromView:self];
    BOOL pointInside = [self.imageView pointInside:convertedPoint withEvent:event];
    if (pointInside) {
        return YES;
    }
    else{
        return [super pointInside:point withEvent:event];
    }
}

- (void)didClick{
    if ([self.delegate respondsToSelector:@selector(barItemDidClick:)]) {
        [self.delegate barItemDidClick:self];
    }
}

@end
