//
//  WindowManager.m
//
//  Created by ToKoRo on 2013-07-11.
//

#import "WindowManager.h"

@interface WindowManager ()
@property (strong) UIWindow* mainWindow;
@property (strong) UIWindow* overlayWindow;
@end 

@implementation WindowManager

- (id)initWithMainWindow:(UIWindow*)window
{
    if ((self = [super init])) {
        self.mainWindow = window;
        [[NSNotificationCenter defaultCenter] addObserver:self
            selector:@selector(handleLoginNotification:)
            name:@"NOTIFICATION_LOGIN"
            object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
            selector:@selector(handleCancelNotification:)
            name:@"NOTIFICATION_CANCEL"
            object:nil];
    }
    return self;
}

- (void)handleLoginNotification:(NSNotification*)notification
{
    UIWindow* window = UIWindow.new;
    window.frame =  [[UIScreen mainScreen] bounds];
    window.windowLevel = UIWindowLevelAlert;

    window.rootViewController = [self.class rootViewControllerFromStoryboardWithName:@"Login"];
    [window makeKeyAndVisible];

    self.overlayWindow = window;
}
    
- (void)handleCancelNotification:(NSNotification*)notification
{
    self.overlayWindow = nil;
    [self.mainWindow makeKeyAndVisible];
}

+ (UIViewController*)rootViewControllerFromStoryboardWithName:(NSString*)name
{
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Login" bundle:nil];
    return [storyboard instantiateInitialViewController];
}

@end
