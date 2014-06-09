//
//  ProfilePageViewController.h
//  Wildfire
//
//  Created by Jeffrey Monaco on 6/9/14.
//  Copyright (c) 2014 Mobile AUG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfilePageViewController : UIViewController

- (IBAction)settingsButton:(id)sender;
- (IBAction)contactsButton:(id)sender;
- (IBAction)globeButton:(id)sender;
- (IBAction)followingButton:(id)sender;
- (IBAction)followedButton:(id)sender;




@property (strong, nonatomic) IBOutlet UITableView *wildFiresTableView;



@end
