//
//  SingeltonSon.m
//  Labb1OliverLennartsson
//
//  Created by Oliver Lennartsson on 2020-01-17.
//  Copyright © 2020 Oliver Lennartsson. All rights reserved.
//

#import "SingeltonSon.h"

@implementation SingeltonSon

static SingeltonSon *instance = nil;    // statisk instansvariabel

+ (id)sharedCenter {
    if (instance == nil) {
        instance = [[super alloc] init];
    }
    return instance;
}

- (id)init {
    if ( (self = [super init]) ) {
        
    }
    return self;
}

+ (void)setAppColor:(UIColor *)newAppColor {
    self.appColor = newAppColor;
}


@end
