//
//  ALAssetsLibrary+FF.h
//  Categary
//
//  Created by xiazer on 15/5/11.
//  Copyright (c) 2015年 xiazer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AssetsLibrary/ALAssetsLibrary.h>
#import <AssetsLibrary/ALAssetsGroup.h>
#import <UIKit/UIKit.h>

@interface ALAssetsLibrary (FF)

- (void)addImage:(UIImage *)image toAlbum:(NSString *)albumName completionBlock:(ALAssetsLibraryWriteImageCompletionBlock)completionBlock failureBlock:(ALAssetsLibraryAccessFailureBlock)failureBlock;
- (void)addAssetURL:(NSURL *)assetURL toAlbum:(NSString *)albumName completionBlock:(ALAssetsLibraryWriteImageCompletionBlock)completionBlock failureBlock:(ALAssetsLibraryAccessFailureBlock)failureBlock;
- (void)addAsset:(ALAsset *)asset toAlbum:(NSString *)albumName completionBlock:(void (^)(BOOL finished))completion failureBlock:(ALAssetsLibraryAccessFailureBlock)failureBlock;


@end
