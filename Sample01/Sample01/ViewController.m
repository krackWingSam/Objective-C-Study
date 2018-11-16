//
//  ViewController.m
//  Sample01
//
//  Created by askstory on 2018. 11. 16..
//  Copyright © 2018년 Askstory. All rights reserved.
//

#import "ViewController.h"
#import "SubViewController.h"

@interface ViewController () <SubViewControllerDelegate> {
    SubViewController *subVC;
}

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    subVC = [[SubViewController alloc] initWithNibName:@"SubViewController" bundle:nil];
    [subVC setDelegate:self];
    _count = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    _count = -50;
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    _count = 100;
}


-(IBAction)action_AddCount:(UIButton *)button {
    _count += 1;
    NSString *text = [[NSString alloc] initWithFormat:@"count : %d", (int)_count];
    [_label setText:text];
    
    [_label setText:[[NSString alloc] initWithFormat:@"count : %d", (int)_count]];
}

-(IBAction)action_ShowSubView:(UIButton *)button {
    [self.view addSubview:subVC.view];
}


#pragma mark - SubViewControllerDelegate
-(void)resetCount {
    _count = 0;
}


@end
