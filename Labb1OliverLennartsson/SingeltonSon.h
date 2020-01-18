//
//  SingeltonSon.h
//  Labb1OliverLennartsson
//
//  Created by Oliver Lennartsson on 2020-01-17.
//  Copyright © 2020 Oliver Lennartsson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SingeltonSon : NSObject
@property (nonatomic) UIColor *appColor;


+ (id)sharedCenter;   // class method to return the singleton object

+ (void)setAppColor:(UIColor*)newAppColor;
// add optional methods to customize the singleton class



@end

NS_ASSUME_NONNULL_END
