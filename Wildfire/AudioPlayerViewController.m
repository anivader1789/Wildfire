//
//  AudioPlayerViewController.m
//  AVCam
//
//  Created by Jeffrey Monaco on 6/23/14.
//  Copyright (c) 2014 Apple Inc. All rights reserved.
//

#import "AudioPlayerViewController.h"

@interface AudioPlayerViewController ()

@end

@implementation AudioPlayerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self playAudio];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)playAudio{
        NSError *error;
    
    
    
     _audioPlayer.delegate = self;
    
    
       
    
    //_audioData = [NSData dataWithContentsOfURL:_audioUrl];//Storing audio in NSDATA.
    
    
    
    _audioPlayer = [[AVAudioPlayer alloc]initWithData:_audioData error:nil];
    
    
    NSLog(@"Audio Data********************: %@",[_audioData description]);
    
        if (error)
            NSLog(@"Error: %@",
                  [error localizedDescription]);
        else
            _audioPlayer.numberOfLoops = -1;//This will make the audio clip loop a infinite amount of times.
            [_audioPlayer play];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
