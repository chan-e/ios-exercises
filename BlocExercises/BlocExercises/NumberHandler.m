//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    
    // Assuming number holds only an integer
    return @([number integerValue] * 2);
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    // Reverse the order, if number is larger than otherNumber
    // So, this function always returns an array of numbers in ascending order
    if (number > otherNumber) {
        NSInteger temp = number;
        number = otherNumber;
        otherNumber = temp;
    }
    
    NSMutableArray *numbers = [NSMutableArray arrayWithCapacity:(otherNumber - number + 1)];
    for (NSInteger i = number; i <= otherNumber; i++) {
        [numbers addObject:[NSNumber numberWithInteger:i]];
    }
    
    return [NSArray arrayWithArray:numbers];
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    
    return [[arrayOfNumbers valueForKeyPath:@"@min.self"] integerValue];
}

@end
