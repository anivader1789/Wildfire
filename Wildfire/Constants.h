//
//  Constants.h
//  Wildfire
//
//  Created by Animesh Anand on 6/18/14.
//  Copyright (c) 2014 Mobile AUG. All rights reserved.
//

#import <Foundation/Foundation.h>

#define ACCESS_KEY_ID          @"AKIAI4ASD6BAHDWKSOUA"
#define SECRET_KEY             @"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"


// Constants for the Bucket
#define S3TRANSFERMANAGER_BUCKET         @"wildfiremobileaug"


#define CREDENTIALS_ERROR_TITLE    @"Missing Credentials"
#define CREDENTIALS_ERROR_MESSAGE  @"AWS Credentials not configured correctly.  Please review the README file."

#define kRequestTagForSmallFile         @"tag-tm-small-file-0"
#define kRequestTagForBigFile           @"tag-tm-big-file-0"
#define kKeyForBigFile                  @"tm-large-file-0"
#define kKeyForSmallFile                @"tm-small-file-0"

#define kSmallFileSize 1024*1024*4.8 //4.8 megs
#define kBigFileSize 1024*1024*10  //10 megs

@interface Constants : NSData

+ (NSString *)transferManagerBucket;

@end
