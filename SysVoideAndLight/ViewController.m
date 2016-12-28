//
//  ViewController.m
//  SysVoideAndLight
//
//  Created by 刘浩浩 on 2016/12/28.
//  Copyright © 2016年 CodingFire. All rights reserved.
//

#import "ViewController.h"

#import "LHVoiceAndLight.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@property (nonatomic,strong)AVAudioPlayer *avAudioPlayer ;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.userInteractionEnabled = YES;
    LHVoiceAndLight *voiceLight = [[LHVoiceAndLight alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:voiceLight];
    
    [self playerMusic];
    
}
- (void)playerMusic
{
    //从budle路径下读取音频文件,这个文件名是你的歌曲名字,mp3是你的音频格式
    NSString *string = [[NSBundle mainBundle] pathForResource:@"夜空中最亮的星" ofType:@"mp3"];
    NSString *playUrl = [string stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];  //转码成UTF-8  否则可能会出现错误
    //把音频文件转换成url格式
    NSURL *url = [NSURL URLWithString:playUrl];
    //初始化音频类 并且添加播放文件
    _avAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    
    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryPlayback error:nil];
    
    [[AVAudioSession sharedInstance] setDelegate:self];
    
    //设置初始音量大小
    //    _avAudioPlayer.volume = 0.5;
    
    //设置音乐播放次数  -1为一直循环
    _avAudioPlayer.numberOfLoops = -1;
    
    //预播放
    [_avAudioPlayer prepareToPlay];
    [_avAudioPlayer play];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
