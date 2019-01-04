//
//  BasicViewController.m
//  Sample03
//
//  Created by AskStoryTeam on 03/01/2019.
//  Copyright © 2019 AskStoryTeam. All rights reserved.
//

#import "BasicViewController.h"
#import "DataController.h"
#import "SampleDataObject.h"
#import "BasicTableViewCell.h"
#import "DataViewController.h"

@interface BasicViewController () <UITableViewDataSource, UITableViewDelegate> {
    IBOutlet UILabel *label_Title;
    IBOutlet UILabel *label_Number;
    IBOutlet UIImageView *imageView_Color;
    
    IBOutlet UITableView *tableView_Color;
    
    IBOutlet UIButton *button_Detail;
    
    NSArray *dataArray;
    
    NSInteger selectedIndex;
}

@end

@implementation BasicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    if (!dataArray)
        dataArray = [[DataController sharedController] dataArray];
    [tableView_Color reloadData];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if (segue.destinationViewController.class == DataViewController.class)
        [(DataViewController*)segue.destinationViewController setSampleData:[dataArray objectAtIndex:selectedIndex]];
}


#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TABLE_VIEW_CELL_ID" forIndexPath:indexPath];
    
    // Configure the cell...
    SampleDataObject *obj = [dataArray objectAtIndex:indexPath.row];
    [[cell textLabel] setText:obj.title];
    
    return cell;
}


#pragma mark - UITableViewDelegate
- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    selectedIndex = indexPath.row;
    
    SampleDataObject *obj = [dataArray objectAtIndex:selectedIndex];
    [label_Title setText:obj.title];
    [label_Number setText:obj.number];
    [imageView_Color setImage:obj.image];
    
    [button_Detail setEnabled:YES];
    
    return indexPath;
}

@end
