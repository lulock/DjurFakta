//
//  ColourWheel.m
//  DjurFakta
//
//  Created by Lulu on 2015-07-02.
//  Copyright (c) 2015 Lulu. All rights reserved.
//

#import "ColourWheel.h"

@implementation ColourWheel

- (instancetype)init
{
    self = [super init];
    if (self) {
       _colours = [[NSArray alloc] initWithObjects:
                   [UIColor colorWithRed:90/255.0f green: 187/255.0f blue: 181/255.0f alpha: 1.0f],
                   [UIColor colorWithRed:255/255.0f green:115/255.0f blue:229/255.0f alpha:1.0f],
                   [UIColor colorWithRed:255/255.0f green:130/255.0f blue:62/255.0f alpha:1.0f],
                   [UIColor colorWithRed:61/255.0f green:150/255.0f blue:207/255.0f alpha:1.0f],
                   [UIColor colorWithRed:111/255.0f green:45/255.0f blue:98/255.0f alpha:1.0f],
                   [UIColor colorWithRed:9/255.0f green:70/255.0f blue:140/255.0f alpha:1.0f],
                   [UIColor colorWithRed:247/255.0f green:90/255.0f blue:18/255.0f alpha:1.0f],
                   nil];
    }
    return self;
}

-(UIColor*) randomColour{
    NSInteger random = arc4random_uniform((int)self.colours.count);
    return self.colours[random];
}

@end
