//
//  BrBaAppDelegate.h
//  BrBa
//
//  Created by matthewdumptruck on 6/27/13.
//  Copyright (c) 2013 matthewdumptruck. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface BrBaAppDelegate: UIResponder <UIApplicationDelegate> {
	View *view;
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;
@end

