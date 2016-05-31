//
//  XMPPmanger.h
//  IMDemo
//
//  Created by iMac on 16/5/31.
//  Copyright © 2016年 carlos_mm. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XMPPStream;
@interface XMPPmanger : NSObject
{
    XMPPStream *xmppstream;
    
}
+(XMPPmanger*)shareObject;
@end
