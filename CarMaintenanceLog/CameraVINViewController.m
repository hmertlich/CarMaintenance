//
//  CameraVINViewController.m
//  CarMaintenanceLog
//
//  Created by Hyrum Mertlich on 8/11/15.
//  Copyright (c) 2015 M Auto. All rights reserved.
//

#import "CameraVINViewController.h"

@interface CameraVINViewController ()

@property (nonatomic, strong) AVCaptureSession *captureSession;
@property (nonatomic, strong) AVCaptureVideoPreviewLayer *videoPreviewLayer;
@property (nonatomic, strong) AVAudioPlayer *audioPlayer;

@end

@implementation CameraVINViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Initially makes the captureSession object nil
    self.captureSession = nil;
    
    NSError *error;
    
    AVCaptureDevice *captureDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    
    AVCaptureDeviceInput *input = [AVCaptureDeviceInput deviceInputWithDevice:captureDevice error:&error];
    
    self.captureSession = [AVCaptureSession new];
    [self.captureSession addInput:input];
    
    AVCaptureMetadataOutput *captureMetadataOutput = [AVCaptureMetadataOutput new];
    [self.captureSession addOutput:captureMetadataOutput];
    
    // Create a new serial dispatch queue
    dispatch_queue_t dispatchQueue;
    dispatchQueue = dispatch_queue_create("myQueue", NULL);
    [captureMetadataOutput setMetadataObjectsDelegate:self queue:dispatchQueue];
    
    [captureMetadataOutput setMetadataObjectTypes:[NSArray arrayWithObject:AVMetadataObjectTypeCode128Code]];
    
    // Initialize the video preview layer and add it as a sublayer to the viewPreview view's layer
    self.videoPreviewLayer = [[AVCaptureVideoPreviewLayer alloc] initWithSession:self.captureSession];
    [self.videoPreviewLayer setVideoGravity:AVLayerVideoGravityResizeAspectFill];
    [self.videoPreviewLayer setFrame:self.view.layer.bounds];
    [self.viewPreview.layer addSublayer:self.videoPreviewLayer];
    
    // Start video capture
    [self.captureSession startRunning];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) stopReading {
    [self.captureSession startRunning];
    self.captureSession = nil;
    
    [self.videoPreviewLayer removeFromSuperlayer];
}



# pragma mark - AVCaptureMetadataOutputObjectsDelegate method implementation

- (void) captureOutput:(AVCaptureOutput *)captureOutput didOutputMetadataObjects:(NSArray *)metadataObjects fromConnection:(AVCaptureConnection *)connection {
    
    // code goes here
}



@end
