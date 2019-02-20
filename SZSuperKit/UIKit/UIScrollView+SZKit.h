//
//  UIScrollView+SZKit.h
//  SZSuperKitDemo
//
//  Created by StenpZ on 2018/9/30.
//  Copyright © 2018年 fatehere. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (SZKit)

@end


@interface UITableView (SZKit)

#pragma mark - Header&Footer
@property(nonatomic, weak) UIView *sz_headerView;
@property(nonatomic, weak) UIView *sz_footerView;

#pragma mark - Cell&SectionView
@property(nonatomic, readonly) NSString *sz_cellIdentifier;
@property(nonatomic, readonly) NSString *sz_headerIdentifier;
@property(nonatomic, readonly) NSString *sz_footerIdentifier;

- (void)sz_registerReuseCellClass:(Class)cellClass;
- (void)sz_registerReuseHeaderClass:(Class)headerClass;
- (void)sz_registerReuseFooterClass:(Class)footerClass;

@end


@interface UICollectionView (SZKit)

#pragma mark - Header&Footer
@property(nonatomic, strong) UIView *sz_headerView;
@property(nonatomic, strong) UIView *sz_footerView;

#pragma mark - Cell&SectionView
@property(nonatomic, readonly) NSString *sz_cellIdentifier;
@property(nonatomic, readonly) NSString *sz_headerIdentifier;
@property(nonatomic, readonly) NSString *sz_footerIdentifier;

- (void)sz_registerReuseCellClass:(Class)cellClass;
- (void)sz_registerReuseHeaderClass:(Class)headerClass;
- (void)sz_registerReuseFooterClass:(Class)footerClass;

@end
