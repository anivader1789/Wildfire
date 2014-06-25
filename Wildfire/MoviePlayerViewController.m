//
//  MoviePlayerViewController.m
//  AVCam
//
//  Created by Jeffrey Monaco on 6/21/14.
//  Copyright (c) 2014 Apple Inc. All rights reserved.
//

#import "MoviePlayerViewController.h"

@interface MoviePlayerViewController ()

@end

@implementation MoviePlayerViewController
@synthesize moviePlayer;

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
    
    ALAssetsLibrary *library = [[ALAssetsLibrary alloc] init];
    [library enumerateGroupsWithTypes:ALAssetsGroupSavedPhotos usingBlock:^(ALAssetsGroup *group, BOOL *stop)
     {
         [group enumerateAssetsUsingBlock:^(ALAsset *alAsset, NSUInteger index, BOOL *innerStop)
          {
              if (alAsset)
              {
                  ALAssetRepresentation *representation =[alAsset defaultRepresentation];
                  
                 // Byte *buffer = (Byte*)malloc(representation.size);
                 // NSUInteger buffered = [representation getBytes:buffer fromOffset:0.0 length:representation.size error:nil];
                 // NSData data = [NSData dataWithBytesNoCopy:buffer length:buffered freeWhenDone:YES];
                  
                  NSURL *url = [representation url];
                  NSString *assetType=[alAsset valueForProperty:ALAssetPropertyType];
                  //UIImage *thumbNailImage=[UIImage imageWithCGImage:alAsset.thumbnail];
                  
                  if([assetType  isEqual: @"ALAssetTypeVideo"] && url != nil){
                      _videoURL= url;
                      NSLog(@"This is %@: ",_videoURL);
                  }
              }
          }];
         if(group==nil)
         {
             // do what ever if group getting null
             
             //NSURL *url = [[NSURL alloc]initWithString:@"http://km.support.apple.com/library/APPLE/APPLECARE_ALLGEOS/HT1211/sample_iTunes.mov"];
             
             NSString *filePath = [[NSBundle mainBundle] pathForResource:@"IMG_1629" ofType:@"MOV"];
             
             NSError *error = nil;
             NSData *data = [NSData dataWithContentsOfFile:filePath options:nil error:&error];
             if(data == nil && error!=nil) {
                 //Print error description
             }
             
            // NSLog(@"Data****************: %@", [data description]);
             
             NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
             NSString *documentsDirectory = [paths objectAtIndex:0];
             NSString *appFile = [documentsDirectory stringByAppendingPathComponent:@"MyFile.MOV"];
             [data writeToFile:appFile atomically:YES];
             
             NSURL *movieUrl = [NSURL fileURLWithPath:appFile];
             moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:movieUrl];
             
             NSLog(@"playing %@",_videoURL);
             NSURL *url = _videoURL;
             
             //Storing video in NSDATA.
             _movieData = [NSData dataWithContentsOfURL:url];
             
             //Create our moviePlayer
             //moviePlayer = [[MPMoviePlayerController alloc]initWithContentURL:url];
             
             [moviePlayer.view setFrame:CGRectMake(0, 30,327, 375)];
             [self.view addSubview:moviePlayer.view];
             
             //Some additional customization
             moviePlayer.fullscreen = NO;
             moviePlayer.allowsAirPlay = YES;
             moviePlayer.shouldAutoplay = YES;
             moviePlayer.repeatMode = YES;
             moviePlayer.controlStyle = MPMovieControlStyleNone;
         }
     } failureBlock: ^(NSError *error)
     {
         // may be photo privacy setting disabled
     }
     ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (IBAction)spreadAction:(id)sender {
}
@end
