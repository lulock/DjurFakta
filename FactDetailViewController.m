//
//  ViewController.m
//  DjurFakta
//
//  Created by Lulu on 2015-07-01.
//  Copyright (c) 2015 Lulu. All rights reserved.
//

#import "FactDetailViewController.h"
#import "Faktabok.h"
#import "ColourWheel.h"


@interface FactDetailViewController ()

@end

@implementation FactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.colourWheel = [[ColourWheel alloc]init];
    
    UIColor *randomColour = [self.colourWheel randomColour];
    self.view.backgroundColor = randomColour;
    
    const CGFloat* colors = CGColorGetComponents( randomColour.CGColor );
    
    UINavigationBar *bar = [self.navigationController navigationBar];
    [bar setBarTintColor:[UIColor colorWithRed:(colors[0] - 0.2) green:(colors[1] - 0.2) blue:(colors[2] - 0.2) alpha:1.0]];
    
    self.nextFact.tintColor = randomColour;
    self.nextFact.layer.cornerRadius = 5;
    
    self.faktum.text = [self.faktabok randomFact];
    self.faktum.textAlignment = NSTextAlignmentCenter;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showFunFact {
    
    UIColor *randomColour = [self.colourWheel randomColour];
    
    const CGFloat* colors = CGColorGetComponents( randomColour.CGColor );
    
    UINavigationBar *bar = [self.navigationController navigationBar];
    [bar setBarTintColor:[UIColor colorWithRed:(colors[0] - 0.2) green:(colors[1] - 0.2) blue:(colors[2] - 0.2) alpha:1.0]];

    
    self.view.backgroundColor = randomColour;
    self.nextFact.tintColor = randomColour;
    self.faktum.text = [self.faktabok randomFact];
}

@end
