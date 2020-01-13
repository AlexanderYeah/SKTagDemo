//
//  ViewController.m
//  SKTagFrameDemo
//
//  Created by coder on 2020/1/13.
//  Copyright © 2020 AlexanderYeah. All rights reserved.
//

#import "ViewController.h"
#import "SKTagFrame.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *titleArr = @[@"优衣库",@"美特斯邦威",@"穿什么就是什么",@"酷奇酷奇芭芭拉",@"苹果手机还是很不错的",@"we like two party",@"面包番茄西红柿",@"nice trick",@"今年冬天不太冷！！！"];
    
    SKTagFrame *frame = [[SKTagFrame alloc] init];
    frame.tagsArray = titleArr;
    
    
    CGFloat first_H = 0;
    CGFloat total_H = 0;
    for (NSInteger i = 0; i<  titleArr.count; i++) {
        UIButton *tagsBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [tagsBtn setTitle: titleArr[i] forState:UIControlStateNormal];
        tagsBtn.backgroundColor = [UIColor whiteColor];
        tagsBtn.layer.borderWidth = 1;
        tagsBtn.layer.borderColor = [UIColor grayColor].CGColor;
        tagsBtn.backgroundColor = [UIColor whiteColor];
        [tagsBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        tagsBtn.titleLabel.font = [UIFont systemFontOfSize:13.f];
        
        tagsBtn.layer.cornerRadius = 1.2;
        tagsBtn.layer.masksToBounds = YES;
        CGRect orgRect = CGRectFromString(frame.tagsFrames[i]);
        CGRect resRect = CGRectMake(orgRect.origin.x, orgRect.origin.y +200 , orgRect.size.width, orgRect.size.height);
        if (i == 0) {
            first_H = orgRect.origin.y + orgRect.size.height;
        }
        total_H = orgRect.origin.y + orgRect.size.height;
        
        // 只显示两行
        tagsBtn.frame = resRect;
        [self.view addSubview:tagsBtn];
    }
    
    
    
    
    
}


@end
