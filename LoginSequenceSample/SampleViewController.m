//
//  SampleViewController.m
//
//  Created by ToKoRo on 2013-07-11.
//

#import "SampleViewController.h"

@implementation SampleViewController

- (IBAction)login:(id)sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NOTIFICATION_LOGIN" object:nil];
}
    
@end
