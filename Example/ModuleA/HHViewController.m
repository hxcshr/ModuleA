//
//  HHViewController.m
//  ModuleA
//
//  Created by hxcshr on 12/28/2021.
//  Copyright (c) 2021 hxcshr. All rights reserved.
//

#import "HHViewController.h"
#import <ModuleA/OneViewController.h>

@interface HHViewController ()

@end

@implementation HHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btnClick:(id)sender {
    NSBundle *bundle = [NSBundle bundleForClass:[OneViewController class]];
    
    bundle = [NSBundle bundleWithPath: [bundle.bundlePath stringByAppendingPathComponent:@"ModuleA.bundle"]];
    NSString *path = [bundle pathForResource:@"OneViewController" ofType:@".nib"];
    NSLog(@"%@",path);
    OneViewController *one = [[OneViewController alloc] initWithNibName:@"OneViewController" bundle:bundle];
    [self.navigationController pushViewController:one animated:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
