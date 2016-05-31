//
//  XMPPmanger.m
//  IMDemo
//
//  Created by iMac on 16/5/31.
//  Copyright © 2016年 carlos_mm. All rights reserved.
//

#import "XMPPmanger.h"
#import "XMPPStream.h"

static XMPPmanger *xmppManger = nil;


@implementation XMPPmanger


+(XMPPmanger *)shareObject{

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        xmppManger = [[XMPPmanger alloc] init];
    });
    return xmppManger;
}
-(instancetype)init{
    self = [super init];
    if (self) {
    
    }
    return self;
}
-(void)setupStream{

    xmppstream = [[XMPPStream alloc] init];
    [xmppstream addDelegate:self delegateQueue:dispatch_get_main_queue()];
    [xmppstream setHostName:@""];
    [xmppstream setHostPort:52222];
}

@end
