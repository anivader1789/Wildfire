//
//  ProfilePageViewController.h
//  Wildfire
//
//  Created by Jeffrey Monaco on 6/9/14.
//  Copyright (c) 2014 Mobile AUG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfilePageViewController : UIViewController

//Buttons
- (IBAction)contactsButton:(id)sender;
- (IBAction)followingButton:(id)sender;
- (IBAction)followedButton:(id)sender;
- (IBAction)gloabeButton:(id)sender;
- (IBAction)settingsButton:(id)sender;


//Table View
@property (strong, nonatomic) IBOutlet UITableView *firesListTableView;

//Images

@end
