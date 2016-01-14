//
//  ViewController.h
//  DjurFakta
//
//  Created by Lulu on 2015-07-01.
//  Copyright (c) 2015 Lulu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Faktabok;
@class ColourWheel;

@interface FactDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *faktum;
@property (strong, nonatomic) Faktabok *faktabok;
@property (strong, nonatomic) ColourWheel *colourWheel;
@property (weak, nonatomic) IBOutlet UIButton *nextFact;

@end

