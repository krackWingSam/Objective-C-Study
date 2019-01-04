//
//  DataViewController.m
//  Sample03
//
//  Created by AskStoryTeam on 03/01/2019.
//  Copyright © 2019 AskStoryTeam. All rights reserved.
//

#import "DataViewController.h"

@interface DataViewController () {
    IBOutlet UILabel *label_Title;
    IBOutlet UILabel *label_Number;
    IBOutlet UILabel *label_FileName;
    IBOutlet UIImageView *imageView_Color;
    
    SampleDataObject *sampleData;
}

@end

@implementation DataViewController

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [label_Title setText:sampleData.title];
    [label_Number setText:sampleData.number];
    [label_FileName setText:[[NSString alloc] initWithFormat:@"%@.png", sampleData.number]];
    [imageView_Color setImage:sampleData.image];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)setSampleData:(SampleDataObject*)data {
    sampleData = data;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
