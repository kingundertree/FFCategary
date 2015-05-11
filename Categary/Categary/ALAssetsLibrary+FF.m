//
//  ALAssetsLibrary+FF.m
//  Categary
//
//  Created by xiazer on 15/5/11.
//  Copyright (c) 2015年 xiazer. All rights reserved.
//

#import "ALAssetsLibrary+FF.h"

@implementation ALAssetsLibrary (FF)

- (void)addImage:(UIImage *)image toAlbum:(NSString *)albumName completionBlock:(ALAssetsLibraryWriteImageCompletionBlock)completionBlock failureBlock:(ALAssetsLibraryAccessFailureBlock)failureBlock
{
    [self writeImageToSavedPhotosAlbum:image.CGImage orientation:(ALAssetOrientation)image.imageOrientation completionBlock:^(NSURL *assetURL, NSError *error) {
        [self addAssetURL:assetURL toAlbum:albumName completionBlock:^(NSURL *assetURL, NSError *error) {
            if (completionBlock != nil) {
                completionBlock(assetURL, nil);
            }
        } failureBlock:^(NSError *error) {
            if (failureBlock != nil) {
                failureBlock(error);
            }
        }];
    }];
}

- (void)addAssetURL:(NSURL *)assetURL toAlbum:(NSString *)albumName completionBlock:(ALAssetsLibraryWriteImageCompletionBlock)completionBlock failureBlock:(ALAssetsLibraryAccessFailureBlock)failureBlock
{
    [self assetForURL:assetURL resultBlock:^(ALAsset *asset) {
        [self addAsset:asset toAlbum:albumName completionBlock:^(BOOL finished) {
            if (completionBlock != nil) {
                completionBlock(assetURL, nil);
            }
        } failureBlock:^(NSError *error) {
            if (failureBlock != nil) {
                failureBlock(error);
            }
        }];
    } failureBlock:^(NSError *error) {
        if (failureBlock != nil) {
            failureBlock(error);
        }
    }];
}

- (void)addAsset:(ALAsset *)asset toAlbum:(NSString *)albumName completionBlock:(void (^)(BOOL finished))completion failureBlock:(ALAssetsLibraryAccessFailureBlock)failureBlock
{
    __block BOOL albumWasFound = NO;
    
    // search all photo albums in the library
    [self enumerateGroupsWithTypes:ALAssetsGroupAlbum usingBlock:^(ALAssetsGroup *group, BOOL *stop) {
        if ([albumName compare:[group valueForProperty:ALAssetsGroupPropertyName]] == NSOrderedSame) {
            albumWasFound = YES;
            [group addAsset:asset];
            if (completion != nil) {
                completion(YES);
            }
            return;
        }
        if (group == nil && albumWasFound == NO){
            [self addAssetsGroupAlbumWithName:albumName resultBlock:^(ALAssetsGroup *group) {
                [group addAsset:asset];
                if (completion != nil) {
                    completion(YES);
                }
            } failureBlock:^(NSError *error) {
                if (failureBlock != nil) {
                    failureBlock(error);
                }
            }];
        }
    } failureBlock:^(NSError *error) {
        if (failureBlock != nil) {
            failureBlock(error);
        }
    }];
}
@end
