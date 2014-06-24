//
//  AudioPlayerViewController.h
//  AVCam
//
//  Created by Jeffrey Monaco on 6/23/14.
//  Copyright (c) 2014 Apple Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AudioPlayerViewController : UIViewController<AVAudioPlayerDelegate>

@property (strong, nonatomic) AVAudioPlayer *audioPlayer;

@property (strong, nonatomic) NSURL *audioUrl;//Used to store path to audio.

@property NSData *audioData;//Used to store audio data.


@end
