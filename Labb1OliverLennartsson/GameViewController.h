//
//  GameViewController.h
//  Labb1OliverLennartsson
//
//  Created by Oliver Lennartsson on 2020-01-10.
//  Copyright © 2020 Oliver Lennartsson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *guessTextField;
@property (weak, nonatomic) IBOutlet UIButton *guessButton;
@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (weak, nonatomic) IBOutlet UISlider *redValueSlider;
@property (weak, nonatomic) IBOutlet UITextField *gamePointsTextView;
@property (weak, nonatomic) IBOutlet UILabel *gameInstructionsTV;
@property (strong, nonatomic) IBOutlet UIView *imagePageView;
@property (nonatomic) UIColor *appColor;
@property (strong, nonatomic) IBOutlet UIView *gameView;


@end
