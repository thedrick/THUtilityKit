//
//  THDispatchUtility.m
//  THUtilityKit
//
//  Created by Tyler Hedrick on 4/27/14.
//  Copyright (c) 2014 Tyler Hedrick. All rights reserved.
//

#import "THDispatchUtility.h"

@implementation THDispatchUtility

void dispatch_async_to_main_queue(th_block_t block) {
  dispatch_async(dispatch_get_main_queue(), block);
}

void dispatch_async_to_main_queue_if_needed(th_block_t block) {
  if ([NSThread isMainThread]) {
    block();
    return;
  }
  dispatch_async_to_main_queue(block);
}

@end
