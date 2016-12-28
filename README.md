# SwipToChangeVoiceAndLight
1.不使用pod
添加库文件，导入Masonry库在控制器中引入头文件#import "LHVoiceAndLight.h"

      LHVoiceAndLight *voiceLight = [[LHVoiceAndLight alloc]initWithFrame:self.view.bounds];
      [self.view addSubview:voiceLight];

2.使用pod在Podfile中添加

      pod 'LHHSysCharge'
      pod 'Masonry'

即可
在使用的VC中引入头文件 #import "LHVoiceAndLight.h"

        LHVoiceAndLight *voiceLight = [[LHVoiceAndLight alloc]initWithFrame:self.view.bounds];
        [self.view addSubview:voiceLight];
