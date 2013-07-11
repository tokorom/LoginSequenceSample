//
//  AppDelegate.m
//
//  Created by yuta-tokoro on 7/11/13.
//

#import "AppDelegate.h"
#import "WindowManager.h"

@interface AppDelegate ()
@property (strong) WindowManager* windowManager;
@end 

@implementation AppDelegate

- (BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions
{
    NSLog(@"#### window: %@", self.window);
    self.windowManager = [[WindowManager alloc] initWithMainWindow:self.window];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication*)application
{
}

- (void)applicationDidEnterBackground:(UIApplication*)application
{
}

- (void)applicationWillEnterForeground:(UIApplication*)application
{
}

- (void)applicationDidBecomeActive:(UIApplication*)application
{
}

- (void)applicationWillTerminate:(UIApplication*)application
{
}

@end
