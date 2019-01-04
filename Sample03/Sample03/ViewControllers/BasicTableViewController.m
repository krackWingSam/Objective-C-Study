//
//  BasicTableViewController.m
//  Sample03
//
//  Created by AskStoryTeam on 03/01/2019.
//  Copyright © 2019 AskStoryTeam. All rights reserved.
//

#import "BasicTableViewController.h"
#import "SampleDataObject.h"
#import "BasicTableViewCell.h"
#import "DataViewController.h"
#import "DataController.h"

@interface BasicTableViewController () {
    NSArray *dataArray;
    NSInteger selectedIndex;
}

@end

@implementation BasicTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [self loadData];
}

-(void)loadData {
    dataArray = [[DataController sharedController] dataArray];
}
    

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return dataArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    if (indexPath.row % 3 == 0)
        cell = [tableView dequeueReusableCellWithIdentifier:@"TABLE_VIEW_CELL_ID2" forIndexPath:indexPath];
    else
        cell = [tableView dequeueReusableCellWithIdentifier:@"TABLE_VIEW_CELL_ID" forIndexPath:indexPath];
    
    // Configure the cell...
    SampleDataObject *obj = [dataArray objectAtIndex:indexPath.row];
    [[(BasicTableViewCell*)cell imageView_Color] setImage:obj.image];
    [[(BasicTableViewCell*)cell label_Title] setText:obj.title];
    [[(BasicTableViewCell*)cell label_Number] setText:obj.number];
    
    return cell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - UITableViewDelegate
- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    selectedIndex = indexPath.row;
    return indexPath;
}


#pragma mark - Navigation
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if (segue.destinationViewController.class == DataViewController.class)
        [(DataViewController*)segue.destinationViewController setSampleData:[dataArray objectAtIndex:selectedIndex]];
}

@end
