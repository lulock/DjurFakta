//
//  FactMasterViewController.m
//  DjurFakta
//
//  Created by Lulu on 2015-07-15.
//  Copyright (c) 2015 Lulu. All rights reserved.
//

#import "FactMasterViewController.h"
#import "FactDetailViewController.h"
#import "Faktabok.h"

@interface FactMasterViewController ()

@end

@implementation FactMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    for (NSUInteger index = 0; index < self.animalViews.count; index++){
        Faktabok *faktaBok = [[Faktabok alloc] initWithIndex:index];
        UIImageView *animalView = self.animalViews[index];
        
        animalView.image = faktaBok.icon;
    }
}

- (void)viewWillAppear:(BOOL)animated{
    UINavigationBar *bar = [self.navigationController navigationBar];
    [bar setBarTintColor:[UIColor colorWithRed:82.0/255.0 green:208.0/255.0  blue:185.0/255.0  alpha:1.0]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqual: @"showFactDetail"]) {
        
         UIImageView *djurImageView = (UIImageView*) [sender view];
        
        
        if ([self.animalViews containsObject:djurImageView]) {
            NSUInteger index = [self.animalViews indexOfObject:djurImageView];
        
            FactDetailViewController *factDetailController = (FactDetailViewController *) segue.destinationViewController;
            factDetailController.faktabok = [[Faktabok alloc] initWithIndex:index];
        }
    }
}

- (IBAction)showFactDetail:(id)sender {
    [self performSegueWithIdentifier:@"showFactDetail" sender:sender];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
