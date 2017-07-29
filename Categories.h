//
//  Counts.h
//  Gosaic
//


#import <Foundation/Foundation.h>
#import "AFAppDotNetAPIClient.h"

@interface Categories : NSObject
+ (void)doGetCategories:(NSDictionary *)params withBlocks:(void (^)(NSDictionary *response, NSError *error))block;
+ (void)doGetCategoriesImages:(NSDictionary *)params withBlocks:(void (^)(NSDictionary *response, NSError *error))block;
@end
