//
//  Node.h
//  ObjcLinkedList
//
//  Created by Halo Lee on 28/05/2015.
//  Copyright (c) 2015 halolee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject
@property (nonatomic, strong) id value;
@property (nonatomic, strong) Node *next;
@property (nonatomic, strong) Node *prev; // Not being used in singly linked list
@end