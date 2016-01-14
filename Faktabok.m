//
//  Djur.m
//  DjurFakta
//
//  Created by Lulu on 2015-07-16.
//  Copyright (c) 2015 Lulu. All rights reserved.
//

#import "Faktabok.h"
#import "DjurPark.h"

@implementation Faktabok

- (instancetype)initWithIndex:(NSUInteger)index
{
    self = [super init];
    if (self) {
        DjurPark *djurFaktaBok = [[DjurPark alloc] init];
        
        NSArray *djurPark = djurFaktaBok.fakta;
        
        NSDictionary *djurParkLexicon = djurPark[index];
        
        _title = [djurParkLexicon objectForKey:kTitle];
        NSString *iconName = [djurParkLexicon objectForKey:kIcon];
        _icon = [UIImage imageNamed: iconName];
        _facts = [djurParkLexicon objectForKey:kFacts];
        
    }
    return self;
}

- (NSString*)randomFact{
    NSInteger random = arc4random_uniform((int)self.facts.count);
    return self.facts[random];
}


@end
