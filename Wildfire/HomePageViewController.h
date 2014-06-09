//
//  HomePageViewController.h
//  Wildfire
//
//  Created by Jeffrey Monaco on 6/9/14.
//  Copyright (c) 2014 Mobile AUG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomePageViewController : UIViewController

//Buttons
- (IBAction)profileButton:(id)sender;
- (IBAction)trendingButton:(id)sender;
- (IBAction)cameraButton:(id)sender;
- (IBAction)settingsButton:(id)sender;

//Table View
@property (strong, nonatomic) IBOutlet UITableView *listOfFiresTableView;

@end
