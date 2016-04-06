//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    // Reverse the order, if number is larger than otherNumber
    // So, this function always returns a string with numbers in ascending order
    if (number > otherNumber) {
        NSInteger temp = number;
        number = otherNumber;
        otherNumber = temp;
    }
    
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    for (NSInteger i = number; i <= otherNumber; i++) {
        [result addObject:[NSNumber numberWithInteger:i]];
    }
    
    return [result componentsJoinedByString:@""];
}

@end
