//
//  DetailViewController.m
//  LovelyAnimalDays_iOS
//
//  Created by 土屋 和良 on 2014/06/05.
//  Copyright (c) 2014年 土屋 和良. All rights reserved.
//

#import "DetailViewController.h"
#import "Animal.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

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
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [self.webView loadRequest:request];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    
    self.navigationItem.title = _animal.title;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
