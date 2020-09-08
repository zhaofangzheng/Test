//
//  UIView+Radius.h
//  Guma_ Special
//
//  Created by cheng on 2020/3/13.
//  Copyright © 2020 XS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Radius)

@property (nonatomic, assign) IBInspectable CGFloat border_Width;
@property (nonatomic, strong) IBInspectable UIColor *border_Color;
@property (nonatomic, assign) IBInspectable CGFloat corner_Radius;
@property (nonatomic, assign) IBInspectable BOOL masks_To_Bounds;


@end

NS_ASSUME_NONNULL_END
