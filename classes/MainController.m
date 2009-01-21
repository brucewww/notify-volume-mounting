//
//  MainController.m
//  notify-volume-mounting
//
//  Created by Jelle Vandebeeck on 21/01/09.
//  Creative Commons 2009 fousa. Some rights reserved.
//

#import "MainController.h"

@implementation MainController

- (id)init
{
	[super init];
	
	NSNotificationCenter *notificationCenter = [[NSWorkspace sharedWorkspace] notificationCenter];
	
	SEL didMountMethod = @selector(didMountMethod:);
	SEL didUnmountMethod = @selector(didUnmountMethod:);
	
	[notificationCenter addObserver:self selector:didMountMethod name:NSWorkspaceDidMountNotification object:nil];
	[notificationCenter addObserver:self selector:didUnmountMethod name:NSWorkspaceDidUnmountNotification object:nil];
	
	return self;
}

- (void)didMountMethod:(NSNotification *)notification
{
	NSLog(@"volume mounted: %@", [notification userInfo]);
}

- (void)didUnmountMethod:(NSNotification *)notification
{
	NSLog(@"volume unmounted: %@", [notification userInfo]);
}

@end
