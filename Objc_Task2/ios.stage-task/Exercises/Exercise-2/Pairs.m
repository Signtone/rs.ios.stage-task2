#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger count = 0;
	if (array.count > 1) {
		for (int i = 0; i < array.count - 1; i++) {
			for (int n = i + 1; n < array.count; n++) {
				long diff = [array[i] longValue] - [array[n] longValue];
				diff *= (diff < 0) ? -1 : 1;
				if (diff == [number longValue]) {
					count++;
				}
			}
		}
	}
    return count;
}

@end
