//
//  TimeTool.m
//  TimeChange
//
//  Created by 上海点硕 on 2017/6/14.
//  Copyright © 2017年 cbl－　点硕. All rights reserved.
//

#import "TimeTool.h"

@implementation TimeTool


// 和当前时间进行比较  输出字符串为（刚刚几个小时前 几天前 ）
+(NSString *)inputTimeStr:(NSString *)timeStr
{
    NSDate *nowDate = [NSDate date];
    NSDate *sinceDate = [self becomeDateStr:timeStr];
    int i  = [nowDate timeIntervalSinceDate:sinceDate];
    
    NSString  *str  = @"";
    if (i <= 60) {
        
        str = @"刚刚";
    }
    else if(i>60 && i<=3600 )
    {
        
        str = [NSString stringWithFormat:@"%d分钟前",i/60];
    }
    else if (i>3600 && i<60*60*24)
    {
        
        str = [NSString stringWithFormat:@"%d小时前",i/3600];
    }
    else
    {
        int k = i/(3600*24);
       
        //在这里大于1天的我们可以以周几的形式显示
        if (k>1) {
            
            str  = [self weekdayStringFromDate:[self becomeDateStr:timeStr]];
        }
        else
        {
          str = [NSString stringWithFormat:@"%d天前",i/(3600*24)];
        }
    }
    
    return str;
    
}

//把时间字符串转换成NSDate
+ (NSDate *)becomeDateStr:(NSString *)dateStr
{
    NSDateFormatter *formatter2 = [[NSDateFormatter alloc]init];
    [formatter2 setDateFormat:@"yyyy-MM-dd HH:mm:ss "];
    
    NSDate *date1 = [formatter2 dateFromString:dateStr];
    return date1;
    
}


+ (NSString*)weekdayStringFromDate:(NSDate*)inputDate {
    
    NSArray *weekdays = [NSArray arrayWithObjects: [NSNull null], @"周日", @"周一", @"周二", @"周三", @"周四", @"周五", @"周六", nil];
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    NSTimeZone *timeZone = [[NSTimeZone alloc] initWithName:@"Asia/Shanghai"];
    
    [calendar setTimeZone: timeZone];
    
    NSCalendarUnit calendarUnit = NSCalendarUnitWeekday;
    
    NSDateComponents *theComponents = [calendar components:calendarUnit fromDate:inputDate];
    
    return [weekdays objectAtIndex:theComponents.weekday];
    
}



@end
