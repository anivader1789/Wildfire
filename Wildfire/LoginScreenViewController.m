//
//  LoginScreenViewController.m
//  Wild Fire V2.0
//
//  Created by Jeffrey Monaco on 6/1/14.
//  Copyright (c) 2014 Jeffrey Monaco. All rights reserved.
//

#import "LoginScreenViewController.h"
#import "HomePageViewController.h"
#import "Utilities.h"

@interface LoginScreenViewController ()

@end

@implementation LoginScreenViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"loginHome"]) {
        //NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        
        //destViewController.recipeName = [recipes objectAtIndex:indexPath.row];
    }

}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    bool result = true;
    
    if ([identifier isEqualToString:@"loginHome"]) {
        //NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        [Utilities popUpMessage:@"Cant go there yet"];
        result = false;
        
    }

    return result;
}


- (IBAction)loginButton:(id)sender {
    
}

- (IBAction)signUpButton:(id)sender {
}




@end
