//
//  SettingsViewController.h
//  Wildfire
//
//  Created by Animesh Anand on 6/9/14.
//  Copyright (c) 2014 Mobile AUG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface SettingsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

- (IBAction)signoutButton:(id)sender;

@property(nonatomic,strong)NSArray *Arrow;
@property(nonatomic,strong)NSArray *Title;
@property(nonatomic,strong)NSArray *UserInfo;

@end
