//
//  Following.h
//  Wildfire
//
//  Created by Animesh Anand on 6/10/14.
//  Copyright (c) 2014 Mobile AUG. All rights reserved.
//

#import <Parse/Parse.h>
#import <Parse/PFObject+Subclass.h>

@interface Following : PFObject <PFSubclassing>

@property (strong, nonatomic) PFUser *follower;
@property (strong, nonatomic) PFUser *followed;
@property bool followBack;

+(NSString*)parseClassName;

@end
