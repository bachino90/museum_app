//
//  MArt.h
//  museum_app
//
//  Created by Emiliano Bivachi on 05/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MArt : NSObject

@property (nonatomic, strong) NSString *artist;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *year;
@property (nonatomic, strong) NSString *info;
@property (nonatomic, strong) NSString *image;
@property (nonatomic, strong) NSString *size;

- (instancetype)initWithDictionary:(NSDictionary *)dict;
+ (NSArray *)testData;

@end
