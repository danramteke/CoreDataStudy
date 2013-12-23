//
//  EditDetailViewController.m
//  StudyInCoreData
//
//  Created by Cyrus on 12/20/13.
//  Copyright (c) 2013 Daniel Ramteke. All rights reserved.
//

#import "EditDetailViewController.h"
#import "SectionsEnum.h"

@interface EditDetailViewController ()

@end

@implementation EditDetailViewController

- (id)initWithAnimal:(Animal*)animal
{
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        self.animal = animal;
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(exitEditMode)];
    }
    return self;
}

-(void)exitEditMode {
    [self.navigationController popViewControllerAnimated:NO];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    switch (section) {
        case COMMON_NAME:
            return @"Common Name";
            break;
        case LATIN_NAME:
            return @"Latin Name";
            break;
        case NUMBER_OF_LIKES:
            return @"Number of Likes";
            break;
            
        default:
            return @"";
            break;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

-(void)configureCell:(UITableViewCell*)cell atIndexPath:(NSIndexPath*)indexPath {
    
    switch (indexPath.section) {
        case COMMON_NAME:
            cell.textLabel.text = self.animal.commonName;
            break;
        case LATIN_NAME:
            cell.textLabel.text = self.animal.latinName;
            break;
        case NUMBER_OF_LIKES:
            cell.textLabel.text = [NSString stringWithFormat:@"%@", self.animal.numberOfLikes];
            break;
            
        default:
            break;
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
