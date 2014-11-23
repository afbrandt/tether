//
//  InterfaceController.m
//  tether WatchKit Extension
//
//  Created by Andrew Brandt on 11/22/14.
//  Copyright (c) 2014 dorystudios. All rights reserved.
//

#import "InterfaceController.h"
//#import "AppDelegate.h"
#import "ViewController.h"

@interface InterfaceController()

@property (assign, nonatomic) BOOL isEnabled;

@end

@implementation InterfaceController

- (IBAction)didSwitchEnabled:(BOOL)value {
    self.isEnabled = value;
}

- (IBAction)notifyPhone {
    NSLog(@"Where are you phone?");
    UILocalNotification *notice = [UILocalNotification new];
    notice.alertAction = @"Found me!";
    notice.alertBody = @"Did you miss me?";
    notice.soundName = UILocalNotificationDefaultSoundName;
    [self handleActionWithIdentifier:@"find-my-phone" forLocalNotification:notice];
}

#pragma mark - Lifecycle methods

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    //enabled = self.isEnabledSwitch;
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end



