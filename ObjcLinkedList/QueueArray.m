//
//  QueueArray.m
//  ObjcLinkedList
//
//  Created by Hao Li on 11/06/2015.
//  Copyright (c) 2015 halolee. All rights reserved.
//

#import "QueueArray.h"

@interface QueueArray()
@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation QueueArray

- (instancetype)init{
    if (self =   [super init]) {
        self.array = [NSMutableArray new];
    }
    return self;
}

- (id)peek{
    return self.array.firstObject;
}

- (void)enqueue:(id)value{
    NSInteger num = [self.array count];
    [self.array insertObject:value atIndex:num];
}

- (id)dequeue{
    id firtValue = self.array.firstObject;
    [self.array removeObjectAtIndex:0];
    return firtValue;
}

- (void) demo {
    QueueArray *queue = [QueueArray new];
    
    [queue enqueue:@1];
    [queue enqueue:@2];
    [queue enqueue:@3];
    
    NSLog(@"%@",[queue.array description]);
    
    NSLog(@"%@",[queue peek]);
    
    [queue enqueue:@4];
    [queue enqueue:@5];
    
   NSLog(@"%@",[queue.array description]);
    
    NSLog(@"%@",[queue peek]);
    
    for (int i = 0; i < 5 ;i ++)
        NSLog(@"%@",[queue dequeue]);
    
    
}

@end
