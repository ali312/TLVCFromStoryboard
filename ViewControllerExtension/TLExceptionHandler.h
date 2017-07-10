//
//  TLExceptionHandler.h
//  ViewControllerExtension
//
//  Created by Anton Kuznetsov on 10.07.17.
//  Original solutuion by freytag at https://stackoverflow.com/questions/32758811/catching-nsexception-in-swift
//

#import <Foundation/Foundation.h>

@interface TLExceptionHandler : NSObject

+ (BOOL)catchException:(void(^)())tryBlock error:(__autoreleasing NSError **)error;

@end
