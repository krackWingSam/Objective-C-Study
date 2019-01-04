//
//  DataController.m
//  Sample03
//
//  Created by AskStoryTeam on 03/01/2019.
//  Copyright © 2019 AskStoryTeam. All rights reserved.
//

#import "DataController.h"
#import "SampleDataObject.h"

@implementation DataController

+(DataController *)sharedController {
    static DataController *sharedController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedController = [[DataController alloc] init];
    });
    return sharedController;
}

-(id)init {
    if (self = [super init]) {
        [self loadData];
    }
    return self;
}

-(void)loadData {
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (NSInteger i=1 ; i<51 ; i++) {
        NSString *title = [[NSString alloc] initWithFormat:@"color id : %ld", i];
        SampleDataObject *tempObject = [[SampleDataObject alloc] initWithTitle:title withNumber:i];
        [tempArray addObject:tempObject];
    }
    
    _dataArray = [[NSArray alloc] initWithArray:tempArray];
}

@end
