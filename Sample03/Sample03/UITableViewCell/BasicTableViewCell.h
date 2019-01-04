//
//  BasicTableViewCell.h
//  Sample03
//
//  Created by AskStoryTeam on 03/01/2019.
//  Copyright © 2019 AskStoryTeam. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BasicTableViewCell : UITableViewCell

@property IBOutlet UILabel *label_Title;
@property IBOutlet UILabel *label_Number;
@property IBOutlet UIImageView *imageView_Color;

@end

NS_ASSUME_NONNULL_END
