//
//  UIScrollView+SZKit.m
//  SZSuperKitDemo
//
//  Created by StenpZ on 2018/9/30.
//  Copyright © 2018年 fatehere. All rights reserved.
//

#import "UIScrollView+SZKit.h"
#import <objc/runtime.h>

@implementation UIScrollView (SZKit)

@end


@interface UITableView (SZKitSet)

@property(nonatomic, copy) NSString *sz_cellIdentifier;
@property(nonatomic, copy) NSString *sz_headerIdentifier;
@property(nonatomic, copy) NSString *sz_footerIdentifier;

@end

@implementation UITableView (SZKit)

#pragma mark - Header&Footer
- (void)setSz_headerView:(UIView *)sz_headerView {
    self.tableHeaderView = sz_headerView;
}

- (UIView *)sz_headerView {
    return self.tableHeaderView;
}

- (void)setSz_footerView:(UIView *)sz_footerView {
    self.tableFooterView = sz_footerView;
}

- (UIView *)sz_footerView {
    return self.tableFooterView;
}

#pragma mark - Cell&SectionView
- (void)setSz_cellIdentifier:(NSString *)sz_cellIdentifier {
    objc_setAssociatedObject(self, @selector(sz_cellIdentifier), sz_cellIdentifier, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)sz_cellIdentifier {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setSz_headerIdentifier:(NSString *)sz_headerIdentifier {
    objc_setAssociatedObject(self, @selector(sz_headerIdentifier), sz_headerIdentifier, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)sz_headerIdentifier {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setSz_footerIdentifier:(NSString *)sz_footerIdentifier {
    objc_setAssociatedObject(self, @selector(sz_footerIdentifier), sz_footerIdentifier, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)sz_footerIdentifier {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)sz_registerReuseCellClass:(Class)cellClass {
    self.sz_cellIdentifier = NSStringFromClass(cellClass);
    [self registerClass:cellClass forCellReuseIdentifier:self.sz_cellIdentifier];
}

- (void)sz_registerReuseHeaderClass:(Class)headerClass {
    self.sz_headerIdentifier = NSStringFromClass(headerClass);
    [self registerClass:headerClass forHeaderFooterViewReuseIdentifier:self.sz_headerIdentifier];
}

- (void)sz_registerReuseFooterClass:(Class)footerClass {
    self.sz_footerIdentifier = NSStringFromClass(footerClass);
    [self registerClass:footerClass forHeaderFooterViewReuseIdentifier:self.sz_footerIdentifier];
}

@end


@interface UICollectionView (SZKitSet)

@property(nonatomic, copy) NSString *sz_cellIdentifier;
@property(nonatomic, copy) NSString *sz_headerIdentifier;
@property(nonatomic, copy) NSString *sz_footerIdentifier;

@end

@implementation UICollectionView (SZKit)

#pragma mark - Header&Footer
- (void)setSz_headerView:(UIView *)sz_headerView {
}

- (UIView *)sz_headerView {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setSz_footerView:(UIView *)sz_footerView {
}

- (UIView *)sz_footerView {
    return objc_getAssociatedObject(self, _cmd);
}

#pragma mark - Cell&SectionView
- (void)setSz_cellIdentifier:(NSString *)sz_cellIdentifier {
    objc_setAssociatedObject(self, @selector(sz_cellIdentifier), sz_cellIdentifier, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)sz_cellIdentifier {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setSz_headerIdentifier:(NSString *)sz_headerIdentifier {
    objc_setAssociatedObject(self, @selector(sz_headerIdentifier), sz_headerIdentifier, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)sz_headerIdentifier {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setSz_footerIdentifier:(NSString *)sz_footerIdentifier {
    objc_setAssociatedObject(self, @selector(sz_footerIdentifier), sz_footerIdentifier, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)sz_footerIdentifier {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)sz_registerReuseCellClass:(Class)cellClass {
    self.sz_cellIdentifier = NSStringFromClass(cellClass);
    [self registerClass:cellClass forCellReuseIdentifier:self.sz_cellIdentifier];
}

- (void)sz_registerReuseHeaderClass:(Class)headerClass {
    self.sz_headerIdentifier = NSStringFromClass(headerClass);
    [self registerClass:headerClass forHeaderFooterViewReuseIdentifier:self.sz_headerIdentifier];
}

- (void)sz_registerReuseFooterClass:(Class)footerClass {
    self.sz_footerIdentifier = NSStringFromClass(footerClass);
    [self registerClass:footerClass forHeaderFooterViewReuseIdentifier:self.sz_footerIdentifier];
}

@end
