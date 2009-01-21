//
//  MainController.h
//  notify-volume-mounting
//
//  Created by Jelle Vandebeeck on 21/01/09.
//  Creative Commons 2009 fousa. Some rights reserved.
//

#import <Foundation/Foundation.h>

@interface MainController : NSObject {

}

// enter this method when a volume is mounted
- (void)didMountMethod:(NSNotification *)notification;
// enter this method when a volume is unmounted
- (void)didUnmountMethod:(NSNotification *)notification;

@end
