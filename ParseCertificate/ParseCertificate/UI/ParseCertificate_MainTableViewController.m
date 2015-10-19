//
//  ParseCertificate_MainTableViewController.m
//  ParseCertificate
//
//  Created by NetEase on 15/10/19.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import "ParseCertificate_MainTableViewController.h"
#import "ParseCertificate_NavigationBar.h"

@implementation ParseCertificate_MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self addNav];
}

-(void) addNav
{
    ParseCertificate_NavigationBar * navbar = [ParseCertificate_NavigationBar getParseCertificateNavigationBar];
    
    self.viewControllers = @[navbar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
