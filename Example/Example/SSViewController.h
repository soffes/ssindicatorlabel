//
//  SSViewController.h
//  Example
//
//  Created by Aaron Brethorst on 12/4/11.
//  Copyright (c) 2011 Structlab LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SSIndicatorLabel.h"
@interface SSViewController : UIViewController
@property(nonatomic,retain) SSIndicatorLabel *indicatorLabel;
- (IBAction)startLoading:(id)sender;
@end
