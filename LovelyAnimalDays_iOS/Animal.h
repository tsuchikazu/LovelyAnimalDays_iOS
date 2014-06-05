//
//  Animal.h
//  LovelyAnimalDays_iOS
//
//  Created by 土屋 和良 on 2014/06/05.
//  Copyright (c) 2014年 土屋 和良. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *image_url;
@property (nonatomic, strong) NSDate *date;

-(id)initWithTitle:(NSString *)title url:(NSString *)url image_url:(NSString *)image_url
             date:(NSDate *)date;
@end
