//
//  LHVoiceAndLight.h
//  SysVoideAndLight
//
//  Created by 刘浩浩 on 2016/12/28.
//  Copyright © 2016年 CodingFire. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>


@interface LHVoiceAndLight : UIView
@property (nonatomic, strong) UIPanGestureRecognizer *leftSwipeGestureRecognizer;
@property (nonatomic, strong) UIPanGestureRecognizer *rightSwipeGestureRecognizer;
@property (nonatomic, strong) MPMusicPlayerController *mpVC;
@end
