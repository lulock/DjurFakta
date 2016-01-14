//
//  ColourWheel.h
//  DjurFakta
//
//  Created by Lulu on 2015-07-02.
//  Copyright (c) 2015 Lulu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ColourWheel : NSObject
@property (strong, nonatomic) NSArray *colours;
- (UIColor*) randomColour;

@end
