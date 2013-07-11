//
//  LoginViewController.m
//
//  Created by ToKoRo on 2013-07-11.
//

#import "LoginViewController.h"

@implementation LoginViewController

- (IBAction)cancel:(id)sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NOTIFICATION_CANCEL" object:nil];
}

@end
