//
//  ViewController.m
//  DouyinLoading
//
//  Created by cs on 2018/11/29.
//  Copyright © 2018 cs. All rights reserved.
//

#import "ViewController.h"
#import "CSDouYinLoading.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:23/255.0f green:25/255.0f blue:41/255.0f alpha:1];
    [self startLoading];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [touches anyObject];
    
    if (touch.tapCount== 1)
    {
        [self stopLoading];
        [self performSelector:@selector(startLoading) withObject:self afterDelay:1.0f];
    }
}

- (void)startLoading {
    [CSDouYinLoading showInView:self.view];
}

- (void)stopLoading {
    [CSDouYinLoading hideInView:self.view];
}

@end
