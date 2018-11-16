//
//  SubViewController.h
//  Sample01
//
//  Created by Ban on 16/11/2018.
//  Copyright © 2018 Askstory. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SubViewControllerDelegate <NSObject>

-(void)resetCount;

@end



@interface SubViewController : UIViewController

@property id<SubViewControllerDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
