//
//  NSObject+LJKVC.h
//  Test自定义KVC
//
//  Created by ^_^ on 2020/10/29.
//  Copyright © 2020 ^_^. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (LJKVC)
// KVC 自定义赋值
- (void)lj_setValue:(nullable id)value forKey:(NSString *)key;
// KVC 自定义取值
- (nullable id)lj_valueForKey:(NSString *)key;
@end

NS_ASSUME_NONNULL_END
