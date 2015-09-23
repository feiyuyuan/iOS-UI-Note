//
//  FirstViewController.m
//  LessonUI-000-NSNotification
//
//  Created by huchunyuan on 15/9/17.
//  Copyright (c) 2015年 Lafree. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    // 注册通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeColor:) name:@"什么时候改变颜色?" object:nil];
    
}

// 改变颜色
- (void)changeColor:(NSNotification *)notification{
    NSLog(@"%@",notification);
    
    NSDictionary *dic = [notification valueForKey:@"userInfo"];
    UIColor *color = [dic valueForKey:@"color"];
    self.view.backgroundColor = color;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
