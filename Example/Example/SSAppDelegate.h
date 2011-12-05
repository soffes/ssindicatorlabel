//
//  SSAppDelegate.h
//  Example
//
//  Created by Aaron Brethorst on 12/4/11.
//  Copyright (c) 2011 Structlab LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SSViewController;

@interface SSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) SSViewController *viewController;

@end
