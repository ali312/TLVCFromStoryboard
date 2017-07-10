//
//  TLExceptionHandler.m
//  ViewControllerExtension
//
//  Created by Anton Kuznetsov on 10.07.17.
//  Original solutuion by freytag at https://stackoverflow.com/questions/32758811/catching-nsexception-in-swift
//

#import "TLExceptionHandler.h"

@implementation TLExceptionHandler

+ (BOOL)catchException:(void(^)())tryBlock error:(__autoreleasing NSError **)error {
    @try {
        tryBlock();
        return YES;
    }
    @catch (NSException *exception) {
        *error = [[NSError alloc] initWithDomain:exception.name code:0 userInfo:exception.userInfo];
        return NO;
    }
}

@end
