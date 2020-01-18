//
//  GameViewController.m
//  Labb1OliverLennartsson
//
//  Created by Oliver Lennartsson on 2020-01-10.
//  Copyright © 2020 Oliver Lennartsson. All rights reserved.
//

#import "GameViewController.h"
#import "TableViewController.h"
#import "SingeltonSon.h"

@implementation GameViewController

int randomNumber;
int guessedNumber;
int points;

- (IBAction)guessBtnPressed:(id)sender {
    
    randomNumber = arc4random_uniform(10) + 1;
    
    guessedNumber = [self.guessTextField.text intValue];
    NSLog(@"guessbutton pressed. guessedNumber: %i randomNumber: %i",guessedNumber,randomNumber);
    
    if(guessedNumber == randomNumber) {
        
        NSLog(@"guessednumber == randomnumber");
        NSString *pointString = [NSString stringWithFormat:@"%i",points++];
        
        self.gamePointsTextView.text = pointString;
        self.gameInstructionsTV.text = [NSString stringWithFormat:@"That's right, the number is %i", randomNumber];
        
    } else if(randomNumber > guessedNumber) {
        self.gameInstructionsTV.text = [NSString stringWithFormat:@"Your number is to low, the number is %i", randomNumber];
    } else if(randomNumber < guessedNumber) {
        self.gameInstructionsTV.text = [NSString stringWithFormat:@"Your number is to high, just like you.. the number is %i", randomNumber];
    }
    
}

-(IBAction)viewColorSlider:(id)sender {
    
    NSLog(@"Slider changed");
    [self updateColor];
}
    
- (void)viewDidLoad {
    if([[SingeltonSon sharedCenter] appColor] != NULL) {
        self.gameView.backgroundColor = [[SingeltonSon sharedCenter] appColor];
        self.imagePageView.backgroundColor = [[SingeltonSon sharedCenter] appColor];
        
    }
    }


- (void)updateColor {
    UIColor *newColor = [UIColor colorWithRed:self.redValueSlider.value green:1 blue:1 alpha:1];
    
    //self.colorView.backgroundColor = newColor;
    self.gameView.backgroundColor = newColor;
    self.appColor = newColor;
        
}



- (IBAction)setNewColor:(id)sender {
    [[SingeltonSon sharedCenter] setAppColor:self.appColor];
}


@end
