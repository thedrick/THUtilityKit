//
//  THDispatchUtility.h
//  THUtilityKit
//
//  Created by Tyler Hedrick on 4/27/14.
//  Copyright (c) 2014 Tyler Hedrick. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^th_block_t)();

@interface THDispatchUtility : NSObject

void dispatch_async_to_main_queue(th_block_t block);
void dispatch_async_to_main_queue_if_needed(th_block_t block);

@end
