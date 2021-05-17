#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSMutableArray *array = [NSMutableArray arrayWithArray:numbersArray];
        if (numbersArray == nil || numbersArray.count == 0)
        return @"";
    
    for (int i = 0; i < array.count; i++) {
        NSInteger number = [array[i] intValue];
        if (number > 255)
            return  @"The numbers in the input array can be in the range from 0 to 255.";
        
        if (number < 0)
            return  @"Negative numbers are not valid for input.";
        
        if (array.count < 4)
            [array addObject:@0];
    }
    
    return  [NSString stringWithFormat:@"%@.%@.%@.%@", array[0], array[1], array[2], array[3]];
}

@end
