//
//  ViewController.m
//  Labb1OliverLennartsson
//
//  Created by Oliver Lennartsson on 2020-01-10.
//  Copyright © 2020 Oliver Lennartsson. All rights reserved.
//

#import "ViewController.h"
#import "GameViewController.h"
#import "SingeltonSon.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if([[SingeltonSon sharedCenter] appColor] != NULL) {
        self.aboutOlegView.backgroundColor = [[SingeltonSon sharedCenter] appColor];
        
    }
}
- (IBAction)goToGameButton:(id)sender {
    
    

}


@end
