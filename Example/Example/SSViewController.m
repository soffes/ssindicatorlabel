//
//  SSViewController.m
//  Example
//
//  Created by Aaron Brethorst on 12/4/11.
//  Copyright (c) 2011 Structlab LLC. All rights reserved.
//

#import "SSViewController.h"

@implementation SSViewController
@synthesize indicatorLabel;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.indicatorLabel = [[[SSIndicatorLabel alloc] initWithFrame:CGRectMake(0, 0, 200, 20)] autorelease];
    self.indicatorLabel.backgroundColor = self.view.backgroundColor;
    self.indicatorLabel.textLabel.textColor = [UIColor whiteColor];
    self.indicatorLabel.center = CGPointMake(160, 240);
    self.indicatorLabel.textLabel.text = NSLocalizedString(@"Load Me!", @"");
    
    [self.view addSubview:self.indicatorLabel];
}

- (IBAction)startLoading:(id)sender
{
    [self.indicatorLabel startWithText:NSLocalizedString(@"I'm Loading!", @"")];
    
    [NSTimer scheduledTimerWithTimeInterval:3.f target:self selector:@selector(finishLoading:) userInfo:nil repeats:NO];
}

- (void)finishLoading:(NSTimer*)timer
{
    [self.indicatorLabel completeWithText:NSLocalizedString(@"I Finished Loading!", @"")];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.indicatorLabel = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
