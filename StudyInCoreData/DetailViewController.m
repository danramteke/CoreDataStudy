//
//  DetailViewController.m
//  StudyInCoreData
//
//  Created by Cyrus on 12/20/13.
//  Copyright (c) 2013 Daniel Ramteke. All rights reserved.
//

#import "DetailViewController.h"
#import "SectionsEnum.h"
#import "EditDetailViewController.h"



@interface DetailViewController ()
@property (weak, nonatomic) Animal* animal;
@end

@implementation DetailViewController

- (id)initWithAnimal:(Animal*)animal
{
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        self.animal = animal;
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(editMode)];
    }
    return self;
}

-(void)editMode {
    [self.navigationController pushViewController:[[EditDetailViewController alloc] initWithAnimal:self.animal] animated:NO];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

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

@end
