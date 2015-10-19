//
//  ParseCertificate_NavigationBar.m
//  ParseCertificate
//
//  Created by NetEase on 15/10/19.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import "ParseCertificate_NavigationBar.h"
#import "ParseCertificate_HeaderNavbar.h"
#import "ParseCertificate_Perdefine.h"

@implementation ParseCertificate_NavigationBar

+(instancetype)getParseCertificateNavigationBar
{
    return [[ParseCertificate_NavigationBar alloc] init];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // redraw the navigation bar
    ParseCertificate_HeaderNavbar * topHead = [ParseCertificate_HeaderNavbar getParseCertificateHeaderNavbar];
    topHead.frame = CGRectMake(0, 0, self.view.frame.size.width, 64);
    topHead.backgroundColor = [UIColor blueColor];
    [self.view addSubview:topHead];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
