//
//  DetailViewController.h
//  LovelyAnimalDays_iOS
//
//  Created by 土屋 和良 on 2014/06/05.
//  Copyright (c) 2014年 土屋 和良. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Animal;

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Animal *animal;

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end
