//
//  Counts.m
//  Gosaic
//


#import "Categories.h"

@implementation Categories
+ (void)doGetCategories:(NSDictionary *)params withBlocks:(void (^)(NSDictionary *response, NSError *error))block
{
    [[AFAppDotNetAPIClient sharedClient] postPath:@"ws_category.php" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSError* error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:responseObject options:kNilOptions error:&error];
        if (!error) {
            if (block) {
                block(json,nil);
            }
        }else
        {
            block(json,error);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        if (block) {
            block(nil,error);
        }
    }];

}
+ (void)doGetCategoriesImages:(NSDictionary *)params withBlocks:(void (^)(NSDictionary *response, NSError *error))block
{
    [[AFAppDotNetAPIClient sharedClient] postPath:@"ws_categoryimagelist.php" parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSError* error;
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:responseObject options:kNilOptions error:&error];
        if (!error) {
            if (block) {
                block(json,nil);
            }
        }else
        {
            block(json,error);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        if (block) {
            block(nil,error);
        }
    }];
}
@end
