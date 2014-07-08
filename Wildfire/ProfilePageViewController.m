//
//  ProfilePageViewController.m
//  Wildfire
//
//  Created by Jeffrey Monaco on 6/9/14.
//  Copyright (c) 2014 Mobile AUG. All rights reserved.
//

#import "ProfilePageViewController.h"
#import "InviteFriendsTableViewController.h"
#import "SearchUserViewController.h"

@interface ProfilePageViewController ()

@end

@implementation ProfilePageViewController

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
    
    UIImage* image3 = [UIImage imageNamed:@"Wild Fire Logo.png"];
    CGRect frameimg = CGRectMake(0, 0, 15, 15);
    UIButton *someButton = [[UIButton alloc] initWithFrame:frameimg];
    [someButton setBackgroundImage:image3 forState:UIControlStateNormal];
    [someButton addTarget:self action:@selector(inviteFriends)
         forControlEvents:UIControlEventTouchUpInside];
    [someButton setShowsTouchWhenHighlighted:YES];
    
    UIBarButtonItem *menubutton =[[UIBarButtonItem alloc] initWithCustomView:someButton];
    self.navigationItem.rightBarButtonItem=menubutton;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)inviteFriends
{
    SearchUserViewController* invitePage = [self.storyboard instantiateViewControllerWithIdentifier:@"SearchUser"];
    self.navigationController.navigationBarHidden = NO;
    [self.navigationController pushViewController:invitePage animated:NO];

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

- (IBAction)contactsButton:(id)sender {
}

- (IBAction)followingButton:(id)sender {
}

- (IBAction)followedButton:(id)sender {
}

- (IBAction)gloabeButton:(id)sender {
}

- (IBAction)settingsButton:(id)sender {
}
@end
