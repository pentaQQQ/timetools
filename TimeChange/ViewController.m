//
//  ViewController.m
//  TimeChange
//
//  Created by 上海点硕 on 2017/6/14.
//  Copyright © 2017年 cbl－　点硕. All rights reserved.
//

#import "ViewController.h"
#import "TimeTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //获取当前时间

    //需要传入的时间格式 2017-06-14 14:18:54
    
    NSString *timeStr  =  [TimeTool inputTimeStr:@"2017-06-12 14:18:54"];
    
    NSLog(@"%@",timeStr);
    
    
    UILabel *label = [UILabel new];
    [self.view addSubview:label];
    label.font = [UIFont systemFontOfSize:16];
    label.textColor = [UIColor orangeColor];
    label.frame = CGRectMake(150, 100, 100, 14);
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"刚刚";
    
    UILabel *label1 = [UILabel new];
    [self.view addSubview:label1];
    label1.font = [UIFont systemFontOfSize:16];
    label1.textColor = [UIColor orangeColor];
    label1.frame = CGRectMake(150, 150, 100, 14);
    label1.textAlignment = NSTextAlignmentCenter;
    label1.text = @"1分钟前";
    
    UILabel *label2 = [UILabel new];
    [self.view addSubview:label2];
    label2.font = [UIFont systemFontOfSize:16];
    label2.textColor = [UIColor orangeColor];
    label2.frame = CGRectMake(150, 200, 100, 14);
    label2.textAlignment = NSTextAlignmentCenter;
    label2.text = @"1个小时前";
    
    UILabel *label3 = [UILabel new];
    [self.view addSubview:label3];
    label3.font = [UIFont systemFontOfSize:16];
    label3.textColor = [UIColor orangeColor];
    label3.frame = CGRectMake(150, 250, 100, 14);
    label3.textAlignment = NSTextAlignmentCenter;
    label3.text = @"1天前";
    
    
    UILabel *label4 = [UILabel new];
    [self.view addSubview:label4];
    label4.font = [UIFont systemFontOfSize:16];
    label4.textColor = [UIColor orangeColor];
    label4.frame = CGRectMake(150, 300, 100, 14);
    label4.textAlignment = NSTextAlignmentCenter;
    label4.text = @"周五";


}
@end
