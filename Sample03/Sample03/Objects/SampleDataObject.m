//
//  SampleDataObject.m
//  Sample03
//
//  Created by AskStoryTeam on 03/01/2019.
//  Copyright © 2019 AskStoryTeam. All rights reserved.
//

#import "SampleDataObject.h"

@implementation SampleDataObject

-(id)initWithTitle:(NSString *)title withNumber:(NSInteger)number {
    if (self = [super init]) {
        self.title = title;
        self.number = [[NSString alloc] initWithFormat:@"%2ld", number];
        
        NSString *fileName = [[NSString alloc] initWithFormat:@"%ld", (long)number];
        NSString *path = [[NSBundle mainBundle] pathForResource:fileName ofType:@"png"];
        self.image = [UIImage imageWithContentsOfFile:path];
    }
    return self;
}

@end
