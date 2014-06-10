//
//  ReceivedFire.m
//  Wildfire
//
//  Created by Animesh Anand on 6/10/14.
//  Copyright (c) 2014 Mobile AUG. All rights reserved.
//

#import "ReceivedFire.h"
#import "Utilities.h"

@implementation ReceivedFire




+(NSString*)parseClassName
{
    return @"ReceivedFire";
}


+(void)getAllLiveFires:(void (^)(NSArray *, NSError *))completionBlock
{
    PFQuery* query = [ReceivedFire query];
    
    [query whereKey:@"Receiver" equalTo:[PFUser currentUser]];
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if(!error){
            if(objects.count > 0){
                NSMutableArray* results = [[NSMutableArray alloc] init];
                for(int i=0;i<objects.count;i++){
                    if([Utilities isExpired:[[objects objectAtIndex:i] objectForKey:@"createdAt"]]){
                        [results addObject:[[objects objectAtIndex:i] objectForKey:@"Fire"]];
                    }
                }
                completionBlock(results,NULL);
            }
        }
        else{
            completionBlock(NULL, error);
        }
    }];
    
}


@end
