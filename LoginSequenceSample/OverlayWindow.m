//
//  OverlayWindow.m
//
//  Created by ToKoRo on 2013-07-11.
//

#import "OverlayWindow.h"

@implementation OverlayWindow

- (id)init
{
  if ((self = [super init])) {
    self.frame = [[UIScreen mainScreen] bounds];
  }
  return self;
}

- (void)makeKeyAndVisible
{
  //self.previousKeyWindow = [[UIApplication sharedApplication] keyWindow];
  self.windowLevel = UIWindowLevelAlert;
  [super makeKeyAndVisible];
}

- (void)resignKeyWindow
{
  [super resignKeyWindow];
  //[self.previousKeyWindow makeKeyAndVisible];
}

@end
