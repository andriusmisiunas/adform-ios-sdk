//
//  VideoAdsViewController.m
//  sample
//
//  Created by Vladas Drejeris on 15/07/15.
//  Copyright (c) 2015 adform. All rights reserved.
//

#import "VideoAdsViewController.h"
#import <AdformAdvertising/AdformAdvertising.h>

@interface VideoAdsViewController ()

@end

@implementation VideoAdsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Create a new banner.
    AFAdHesion *adHesion = [[AFAdHesion alloc] initWithMasterTagId:4935562 position:AFAdPositionTop presentingViewController:self];
    adHesion.debugMode = YES;
    
    // Set its content type to video banners.
    adHesion.adContentType = AFVideoBanners;
    
    // Define custom size of the banner.
    adHesion.adSize = CGSizeMake(320, 300);
    
    // Setup video settings.
    adHesion.videoSettings.closeButtonBehavior = AFVideoAdCloseButtonBehaviorAllways;
    adHesion.videoSettings.controlsStyle = AFVideoPlayerControlsStyleMinimal;
    
    // Add the ad view to view hierarchy.
    [self.view addSubview:adHesion];
    
    // Start loading.
    [adHesion loadAd];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end