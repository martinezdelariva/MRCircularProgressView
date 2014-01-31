//
//  MRViewController.m
//  MRCircularProgressView
//
//  Created by Jose Luis Martinez de la Riva on 30/01/14.
//  Copyright (c) 2014 Jose Luis Martinez de la Riva. All rights reserved.
//

#import "MRViewController.h"
#import "MRCircularProgressView.h"

@interface MRViewController ()
// IBOutlets
@property (weak, nonatomic) IBOutlet MRCircularProgressView *circularProgressView;
@property (weak, nonatomic) IBOutlet MRCircularProgressView *autoCircularProgressView;

// Variables
@property (assign, nonatomic) CGFloat currentProgress;
@end

@implementation MRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // CircularProgressViews
    self.circularProgressView.progressColor = self.view.tintColor;
    self.autoCircularProgressView.progressColor = [UIColor redColor];
    self.autoCircularProgressView.progressArcWidth = 10.5f;
    
    // Progress
    self.currentProgress = 0.0f;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tappedReset:(id)sender
{
    self.currentProgress = 0.0f;
    [self.circularProgressView setProgress:self.currentProgress animated:NO];
}

- (IBAction)tappedNoAnimated:(id)sender
{
    self.currentProgress += 0.2f;
    [self.circularProgressView setProgress:self.currentProgress animated:NO];
}
- (IBAction)tapped:(id)sender
{
    self.currentProgress += 0.2f;
    [self.circularProgressView setProgress:self.currentProgress animated:YES];
}

- (IBAction)tappedAuto:(id)sender
{
    [self.autoCircularProgressView setProgress:1.0f duration:1];
}
- (IBAction)tappedAutoReset:(id)sender
{
    [self.autoCircularProgressView setProgress:0.0f animated:YES];
}

@end
