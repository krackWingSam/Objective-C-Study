//
//  DataController.h
//  Sample03
//
//  Created by AskStoryTeam on 03/01/2019.
//  Copyright © 2019 AskStoryTeam. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DataController : NSObject

+(DataController *)sharedController;

@property (readonly) NSArray *dataArray;

@end

NS_ASSUME_NONNULL_END
