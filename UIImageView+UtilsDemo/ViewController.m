//
//  ViewController.m
//  UIImageView+UtilsDemo
//
//  Created by noughts on 2014/09/11.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+Utils.h"


@implementation ViewController{
	__weak IBOutlet UIImageView* _iv;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	UIColor* white_color = [[UIColor alloc] initWithWhite:1 alpha:0.5];
	[_iv applyBlurWithRaduis:10 tintColor:white_color saturationDeltaFactor:1 animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
