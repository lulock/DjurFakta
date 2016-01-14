//
//  Djur.h
//  DjurFakta
//
//  Created by Lulu on 2015-07-16.
//  Copyright (c) 2015 Lulu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "FaktaBok.h"


@interface Faktabok : NSObject

- (instancetype)initWithIndex:(NSUInteger)index;

- (NSString*) randomFact;

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) UIImage *icon;
@property (strong, nonatomic) NSArray *facts;


@end
