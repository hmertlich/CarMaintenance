//
//  VehicleEntryViewController.m
//  CarMaintenanceLog
//
//  Created by Hyrum Mertlich on 8/11/15.
//  Copyright (c) 2015 M Auto. All rights reserved.
//

#import "NewVehicleViewController.h"

@interface NewVehicleViewController ()

@property (strong, nonatomic) IBOutlet UIBarButtonItem *saveButton;
@property (strong, nonatomic) IBOutlet UIButton *cameraButton;

@property (strong, nonatomic) IBOutlet UITextField *makeTextField;
@property (strong, nonatomic) IBOutlet UITextField *modelTextField;
@property (strong, nonatomic) IBOutlet UITextField *yearTextField;
@property (strong, nonatomic) IBOutlet UITextField *trimTextField;
@property (strong, nonatomic) IBOutlet UITextField *styleTextField;


@end

@implementation NewVehicleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void) viewWillAppear:(BOOL)animated {
    // TimeStamp to current date and time
}


# pragma mark - Text editing methods


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
