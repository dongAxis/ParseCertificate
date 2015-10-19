//
//  ParseCertificate_HeaderNavbar.m
//  ParseCertificate
//
//  Created by NetEase on 15/10/19.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#import "ParseCertificate_HeaderNavbar.h"
#import "ParseCertificate_Perdefine.h"

@interface ParseCertificate_HeaderNavbar()
@prop_weak(UIImageView, logoLabel);
@prop_weak(UISearchBar, searchBar);
@prop_weak(UIButton, btn);
@end

@implementation ParseCertificate_HeaderNavbar

@def_porp_weak(UILabel,logoLabel);
@def_porp_weak(UISearchBar, searchBar);
@def_porp_weak(UIButton, btn);

+(instancetype)getParseCertificateHeaderNavbar
{
    return [[self alloc] init];
}

-(instancetype)init
{
    self = [super init];
    if(self)
    {
        //logo
        UIImageView *image_view = [[UIImageView alloc] init];
        image_view.image=[UIImage imageNamed:@"welcome_logo"];
        self.logoLabel = image_view;
        [self addSubview:self.logoLabel];
        
        //search text box
        UISearchBar *bar = [[UISearchBar alloc] init];
        self.searchBar = bar;
        self.searchBar.tintColor=self.backgroundColor;
        [self addSubview:bar];
        
        //search btn
        UIButton *button = [[UIButton alloc] init];
        [button setTitle:@"搜索" forState:UIControlStateNormal];
        [self addSubview:button];
        self.btn = button;
    }
    return self;
}

- (void)layoutSubviews
{
    //logo
    CGFloat y = kStatusHeight+(self.frame.size.height-kLogoHeight-kStatusHeight)*0.5;
    self.logoLabel.frame = CGRectMake(kHome_Margin, y, kLogoWidth, kLogoHeight);
    
    //search btn
    CGFloat searchBarX = CGRectGetMaxX(self.logoLabel.frame)+kHome_Margin;
    CGFloat searchBarY = y-0.5*kHome_Margin;
    CGFloat searchBarWidth = self.frame.size.width-searchBarX-kHome_Margin-kLogoWidth;
    CGFloat searchBarHeight = kLogoHeight+kHome_Margin;
    self.searchBar.frame = CGRectMake(searchBarX, searchBarY, searchBarWidth, searchBarHeight);
    
    self.btn.frame = CGRectMake(self.frame.size.width-kLogoWidth, y, kLogoWidth, kLogoHeight);
}

@end
