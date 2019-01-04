//
//  SampleDataObject.h
//  Sample03
//
//  Created by AskStoryTeam on 03/01/2019.
//  Copyright © 2019 AskStoryTeam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SampleDataObject : NSObject

-(id)initWithTitle:(NSString *)title withNumber:(NSInteger)number;

@property NSString *title;
@property NSString *number;
@property UIImage *image;

@end

NS_ASSUME_NONNULL_END
