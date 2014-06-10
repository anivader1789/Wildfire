//
//  SettingsViewController.m
//  Wildfire
//
//  Created by Animesh Anand on 6/9/14.
//  Copyright (c) 2014 Mobile AUG. All rights reserved.
//

#import "SettingsViewController.h"
#import "SettingsTableViewCell.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

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
    
    //Initialize the dataArray
    dataArray = [[NSMutableArray alloc] init];
    
    //First section data
    NSArray *firstItemsArray = [[NSArray alloc] initWithObjects:@"Username",@"Mobile Number",@"Email",@"Notification Sounds",nil];
    NSDictionary *firstItemsArrayDict = [NSDictionary dictionaryWithObject:firstItemsArray forKey:@"data"];
    [dataArray addObject:firstItemsArrayDict];
    
    //Second section data
    NSArray *secondItemsArray = [[NSArray alloc] initWithObjects:@"Manage",nil];
    NSDictionary *secondItemsArrayDict = [NSDictionary dictionaryWithObject:secondItemsArray forKey:@"data"];
    [dataArray addObject:secondItemsArrayDict];
    
    //Second section data
    NSArray *thirdItemsArray = [[NSArray alloc] initWithObjects:@"See Fires", @"View My Profile",nil];
    NSDictionary *thirdItemsArrayDict = [NSDictionary dictionaryWithObject:thirdItemsArray forKey:@"data"];
    [dataArray addObject:thirdItemsArrayDict];
    
    //Second section data
    NSArray *fourthItemsArray = [[NSArray alloc] initWithObjects:@"Support", @"Privacy Policy", @"Terms of Use",nil];
    NSDictionary *fourthItemsArrayDict = [NSDictionary dictionaryWithObject:fourthItemsArray forKey:@"data"];
    [dataArray addObject:fourthItemsArrayDict];
    
    //Second section data
    NSArray *fifthItemsArray = [[NSArray alloc] initWithObjects:@"Clear Fires",nil];
    NSDictionary *fifthItemsArrayDict = [NSDictionary dictionaryWithObject:fifthItemsArray forKey:@"data"];
    [dataArray addObject:fifthItemsArrayDict];
    
    //Second section data
    NSArray *sixthItemsArray = [[NSArray alloc] initWithObjects:@"Log Out",nil];
    NSDictionary *sixthItemsArrayDict = [NSDictionary dictionaryWithObject:sixthItemsArray forKey:@"data"];
    [dataArray addObject:sixthItemsArrayDict];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [dataArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //Number of rows it should expect should be based on the section
    NSDictionary *dictionary = [dataArray objectAtIndex:section];
    NSArray *array = [dictionary objectForKey:@"data"];
    return [array count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    if(section == 0)
        return @"MY ACCOUNT";
    else if(section == 1)
        return @"ADDITIONAL SERVICES";
    else if(section == 2)
        return @"WHO CAN...";
    else if(section == 3)
        return @"MORE INFORMATION";
    else if(section == 4)
        return @"ACCOUNT ACTIONS";
    else if(section == 5)
        return @"LOG OUT";
    else return @"";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    NSLog(@"Settings Table loaded");
    static NSString *CellIdentifier = @"TableCell";
   SettingsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    NSDictionary *dictionary = [dataArray objectAtIndex:indexPath.section];
    NSArray *array = [dictionary objectForKey:@"data"];
    NSString *cellValue = [array objectAtIndex:indexPath.row];
    cell.textLabel.text = cellValue;
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (IBAction)signoutButton:(id)sender {
    NSLog(@"Logging out user");
    
    /*
    //Clear all cached results
    [PFQuery clearAllCachedResults];
    
    //Log out
    [PFUser logOut];
    PFUser *user = [PFUser currentUser];
    NSLog(@"%@", user);
    [[FBSession activeSession] closeAndClearTokenInformation];
     */
}
@end
