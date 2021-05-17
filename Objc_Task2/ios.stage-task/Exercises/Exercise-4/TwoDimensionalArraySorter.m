#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    NSMutableArray * numArray = [NSMutableArray new];
    NSMutableArray * strArray = [NSMutableArray new];
    NSMutableArray * mixedArray = [NSMutableArray new];
    
    if ([array[0] isKindOfClass:[NSString class]] || [array[0] isKindOfClass:[NSNumber class]]) {
        return @[];
    } else {
        for (int i = 0; i < array.count; i++) {
            for (int j = 0; j < array[i].count; j++) {
                if ([array[i][j] isKindOfClass:[NSNumber class]]) {
                    [numArray addObject:array[i][j]];
                } else {
                    [strArray addObject:array[i][j]];
                }
                
            }
        }
    }
    
    [numArray sortUsingSelector: @selector(compare:)];
    [strArray sortUsingSelector: @selector(compare:)];
    
    if ((strArray.count != 0) && (numArray.count != 0)) {
        NSArray* reversedArray = [[strArray reverseObjectEnumerator] allObjects];
        [mixedArray addObject: numArray];
        [mixedArray addObject: reversedArray];
        return mixedArray;
    } else if (numArray.count != 0) {
        return numArray;
    } else if (strArray.count != 0) {
        return   strArray;
    }
    
    return @[];
}

@end
