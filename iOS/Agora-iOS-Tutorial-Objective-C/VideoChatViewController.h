//
//  VideoChatViewController.h
//  Agora iOS Tutorial Objective-C
//
//  Created by James Fang on 7/15/16.
//  Copyright © 2016 Agora.io. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AgoraRtcKit/AgoraRtcEngineKit.h>
#import "AppID.h"

@interface VideoChatViewController : UIViewController <AgoraRtcEngineDelegate>
@property (nonatomic, strong) NSString *channel;
@property (nonatomic, strong) NSString *encryptionPassword;
@property (nonatomic, strong) NSString *encryptionMode;

@end

