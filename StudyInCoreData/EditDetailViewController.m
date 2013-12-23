//
//  EditDetailViewController.m
//  StudyInCoreData
//
//  Created by Cyrus on 12/20/13.
//  Copyright (c) 2013 Daniel Ramteke. All rights reserved.
//

#import "EditDetailViewController.h"
#import "SectionsEnum.h"
#import "EditDetailCell.h"

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
    [self saveNewValues];
    [self.navigationController popViewControllerAnimated:NO];
}

-(void)saveNewValues {
    self.animal.commonName = [self textForSection:COMMON_NAME];
    self.animal.latinName = [self textForSection:LATIN_NAME];
    self.animal.numberOfLikes = [NSNumber numberWithInteger:[[self textForSection:NUMBER_OF_LIKES] integerValue]];
}

-(NSString*)textForSection:(NSInteger)section {
    NSString* s = ((EditDetailCell*)[self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:section]]).textField.text;
    NSLog(@"got text for section %ld and it is %@", (long)(long)section, s);
    return s;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.tableView registerClass:[EditDetailCell class] forCellReuseIdentifier:@"Cell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

-(NSIndexPath*)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [((EditDetailCell*)[self.tableView cellForRowAtIndexPath:indexPath]).textField becomeFirstResponder];
    return nil;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    EditDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

-(void)configureCell:(EditDetailCell*)cell atIndexPath:(NSIndexPath*)indexPath {
    
    switch (indexPath.section) {
        case COMMON_NAME:
            cell.textField.text = self.animal.commonName;
            break;
        case LATIN_NAME:
            cell.textField.text = self.animal.latinName;
            break;
        case NUMBER_OF_LIKES:
            cell.textField.text = [NSString stringWithFormat:@"%@", self.animal.numberOfLikes];
            break;
            
        default:
            break;
    }
}

@end
