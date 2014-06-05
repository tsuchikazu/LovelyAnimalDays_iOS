//
//  Animal.m
//  LovelyAnimalDays_iOS
//
//  Created by 土屋 和良 on 2014/06/05.
//  Copyright (c) 2014年 土屋 和良. All rights reserved.
//

#import "Animal.h"

@implementation Animal
-(id)initWithTitle:(NSString *)title url:(NSString *)url image_url:(NSString *)image_url date:(NSDate *)date
{
    self = [super init];
    if (self) {
        _title = title;
        _url = url;
        _image_url = image_url;
        _date = date;
        return self;
    }
    return nil;
}
@end
