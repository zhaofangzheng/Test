//
//  UIView+Radius.m
//  Guma_ Special
//
//  Created by cheng on 2020/3/13.
//  Copyright © 2020 XS. All rights reserved.
//

#import "UIView+Radius.h"
#import <objc/runtime.h>


@implementation UIView (Radius)

- (void)setCorner_Radius:(CGFloat)corner_Radius {
    
    if (corner_Radius > 0) {
        self.layer.cornerRadius = corner_Radius;
    }
    objc_setAssociatedObject(self, @selector(corner_Radius), @(corner_Radius), OBJC_ASSOCIATION_ASSIGN);
}

- (CGFloat)corner_Radius {
    return [objc_getAssociatedObject(self,_cmd) floatValue];
}

- (void)setBorder_Width:(CGFloat)border_Width {
    if (border_Width > 0) {
        self.layer.borderWidth = border_Width;
    }
    objc_setAssociatedObject(self, @selector(border_Width), @(border_Width), OBJC_ASSOCIATION_ASSIGN);
}

- (CGFloat)border_Width {
    return [objc_getAssociatedObject(self,_cmd) floatValue];
}

- (void)setBorder_Color:(UIColor *)border_Color {
    self.layer.borderColor = border_Color.CGColor;
    objc_setAssociatedObject(self, @selector(border_Color), border_Color, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)border_Color {
    return objc_getAssociatedObject(self,_cmd);
}

- (void)setMasks_To_Bounds:(BOOL)masks_To_Bounds {
    self.layer.masksToBounds = masks_To_Bounds;
    objc_setAssociatedObject(self, @selector(masks_To_Bounds), @(masks_To_Bounds), OBJC_ASSOCIATION_ASSIGN);

}

- (BOOL)masks_To_Bounds {
    return [objc_getAssociatedObject(self,_cmd) boolValue];
}

@end
