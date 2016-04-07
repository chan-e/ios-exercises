//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    
    return [charactersArray valueForKey:@"favorite drink"];
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    NSMutableDictionary *characterDictionaryWithQuote = [characterDictionary mutableCopy];
    
    NSString *characterName = characterDictionary[@"name"];
    
    // Add a specific quote to a specific character
    if ([characterName localizedCaseInsensitiveCompare:@"Jean-Luc Picard"] == NSOrderedSame) {
        [characterDictionaryWithQuote setObject:@"Engage!" forKey:@"quote"];
    }
    
    return [NSDictionary dictionaryWithDictionary:characterDictionaryWithQuote];
}

@end
