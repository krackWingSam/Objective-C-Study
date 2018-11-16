//
//  SubViewController.m
//  Sample01
//
//  Created by Ban on 16/11/2018.
//  Copyright © 2018 Askstory. All rights reserved.
//

#import "SubViewController.h"

@interface SubViewController ()

@end

@implementation SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(IBAction)action_RemoveThisView:(UIButton *)button {
    [self.view removeFromSuperview];
}

-(IBAction)action_ResetCount:(UIButton *)button {
    [_delegate resetCount];
}
    

@end
