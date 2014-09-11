//
//  UIImageView+Utils.m
//  UIImageView+UtilsDemo
//
//  Created by noughts on 2014/09/11.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import "UIImageView+Utils.h"
#import <UIImage+Utils/UIImage+Utils.h>

@implementation UIImageView (Utils)

/// ブラーをかける
-(void)applyBlurWithRaduis:(NSInteger)radius tintColor:(UIColor *)tintColor saturationDeltaFactor:(CGFloat)saturationDeltaFactor animated:(BOOL)animated{
	[self.image imageByApplyingOptimizedBlurWithRadius:radius tintColor:tintColor saturationDeltaFactor:saturationDeltaFactor queue:nil completion:^(UIImage *result_img) {
		[self setImage:result_img animated:animated];
	}];
}


/// アニメーション付きで画像をセット
-(void)setImage:(UIImage *)image animated:(BOOL)animated{
	[self setImage:image];
	if( animated ){
		CATransition *transition = [CATransition animation];
		transition.duration = 0.25;
		transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
		transition.type = kCATransitionFade;
		[self.layer addAnimation:transition forKey:@"setImage"];
	}
}


@end
