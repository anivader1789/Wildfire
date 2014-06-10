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
    
<<<<<<< HEAD
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    gestureRecognizer.cancelsTouchesInView = NO; //so that action such as clear text field button can be pressed
    [self.view addGestureRecognizer:gestureRecognizer];

}

- (void) hideKeyboard {
    [self.view endEditing:YES];
}



=======
}


>>>>>>> FETCH_HEAD
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

/*
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
*/


- (IBAction)loginButton:(id)sender {
<<<<<<< HEAD
    [PFUser logInWithUsernameInBackground:_usernameText.text password:_passwordText.text block:^(PFUser *user, NSError *error) {
        if (!error) {
            //Login
            [Utilities popUpMessage:@"Login Success"];
            
        } else {
            [Utilities popUpMessage:@"phone number or password invalid"];
        }
    }];
=======
    NSLog(@"Login button pressed");
    
    if(self.navigationController == nil)NSLog(@"This is NIL");
    /*HomePageViewController *homePage = [[HomePageViewController alloc]initWithNibName:@"HomePageViewController" bundle:nil];
    [self.navigationController pushViewController:homePage animated:YES];*/
    
    //UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"iPhoneMain" bundle: nil];
    HomePageViewController *homePage = [self.storyboard instantiateViewControllerWithIdentifier:@"HomePage"];
    [self.navigationController pushViewController:homePage animated:YES];
    
    
>>>>>>> FETCH_HEAD
}

- (IBAction)signUpButton:(id)sender {
    
}




@end
