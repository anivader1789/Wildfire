//
//  PhotoEditViewController.h
//  AVCam
//
//  Created by Jeffrey Monaco on 6/18/14.
//  Copyright (c) 2014 Apple Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoEditViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *mainImageView;
@property NSData *capturedPic;

@end
