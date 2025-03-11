//
//  ObjCViewController.m
//  Connectivity
//
//  Created by Ross Butler on 11/14/19.
//  Copyright © 2019 Ross Butler. All rights reserved.
//

#import "ObjCViewController.h"
@import Connectivity;

/// ObjCViewController included for illustrative purposes - not actually used by the sample app.
@interface ObjCViewController ()

@property(nonatomic, strong) ConnectivityManager *connectivity;

@end

@implementation ObjCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _connectivity = [[ConnectivityManager alloc] initWithShouldUseHTTPS:YES];
    [_connectivity setFramework:ConnectivityFrameworkNetwork];
    [_connectivity setWhenConnected:^(ConnectivityManager * connectivity) {
        switch(connectivity.status) {
            case ConnectivityStatusConnected:
                break;
            case ConnectivityStatusDetermining:
                break;
            case ConnectivityStatusNotConnected:
                break;
            case ConnectivityStatusConnectedViaWiFi:
                break;
            case ConnectivityStatusConnectedViaCellular:
                break;
            case ConnectivityStatusConnectedViaWiFiWithoutInternet:
                break;
            case ConnectivityStatusConnectedViaCellularWithoutInternet:
                break;
            case ConnectivityStatusConnectedViaEthernet:
                break;
            case ConnectivityStatusConnectedViaEthernetWithoutInternet:
                break;
        }
    }];
    [_connectivity setWhenDisconnected:^(ConnectivityManager * connectivity) {
        // TODO
    }];
    dispatch_queue_global_t backgroundQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0);
    [_connectivity startNotifierWithQueue:backgroundQueue];
}

@end
