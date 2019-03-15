//
//  main.m
//  NotifyOut
//
//  Created by James Upjohn on 14/03/19.
//  Copyright © 2019 James Upjohn. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <UserNotifications/UserNotifications.h>

void runNotification(NSString *title, NSString *body) {
    UNUserNotificationCenter *unc = [UNUserNotificationCenter currentNotificationCenter];
    
    UNMutableNotificationContent *notifContent = [UNMutableNotificationContent alloc];
    notifContent.title = title;
    notifContent.body = body;
    
    UNNotificationRequest *unr = [UNNotificationRequest requestWithIdentifier:@"Test" content:notifContent trigger:nil];
    
    [unc addNotificationRequest:unr withCompletionHandler:nil];
}

int main(int argc, const char * argv[]) {
    runNotification(@"Test", @"Test body");
    
    return NSApplicationMain(argc, argv);
}
