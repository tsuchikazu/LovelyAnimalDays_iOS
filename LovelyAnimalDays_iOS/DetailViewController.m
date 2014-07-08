//
//  DetailViewController.m
//  LovelyAnimalDays_iOS
//
//  Created by 土屋 和良 on 2014/06/05.
//  Copyright (c) 2014年 土屋 和良. All rights reserved.
//

#import "DetailViewController.h"
#import "Animal.h"
#import "NJKWebViewProgressView.h"
#import "NJKWebViewProgress.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController
{
    NJKWebViewProgressView *_progressView;
    NJKWebViewProgress *_progressProxy;
}

#pragma mark - Managing the detail item

- (void)setAnimal:(id)animal
{
    if (_animal != animal) {
        _animal = animal;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (_animal) {
        
        [super viewDidLoad];
        NSURL *url = [NSURL URLWithString:
                      [_animal.url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]
                      ];
        
        // progressBar
        _progressProxy = [[NJKWebViewProgress alloc] init]; // instance variable
        _webView.delegate = _progressProxy;
        _progressProxy.webViewProxyDelegate = self;
        _progressProxy.progressDelegate = self;
        
        CGFloat progressBarHeight = 2.f;
        CGRect navigaitonBarBounds = self.navigationController.navigationBar.bounds;
        CGRect barFrame = CGRectMake(0, navigaitonBarBounds.size.height - progressBarHeight, navigaitonBarBounds.size.width, progressBarHeight);
        _progressView = [[NJKWebViewProgressView alloc] initWithFrame:barFrame];
        _progressView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;

        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [self.webView loadRequest:request];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar addSubview:_progressView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)webViewProgress:(NJKWebViewProgress *)webViewProgress updateProgress:(float)progress
{
    [_progressView setProgress:progress animated:YES];
    self.title = [_webView stringByEvaluatingJavaScriptFromString:@"document.title"];
}

@end
