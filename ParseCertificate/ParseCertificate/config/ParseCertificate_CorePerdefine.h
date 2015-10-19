//
//  ParseCertificate_CorePerdefine.h
//  ParseCertificate
//
//  Created by NetEase on 15/10/19.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

#ifndef ParseCertificate_ParseCertificate_CorePerdefine_h
#define ParseCertificate_ParseCertificate_CorePerdefine_h

#undef singleton
#define singleton( __class__ )                                  \
    property (nonatomic, readonly) __class__ * sharedInstance;  \
    - (__class__ *)sharedInstance;                              \
    + (__class__ *)sharedInstance;

#undef def_singleton
#define def_singleton( __class__ )                                 \
    dynamic sharedInstance;                                        \
    - ( __class__ *) sharedInstance {                              \
        return [ __class__ sharedInstance];                        \
    }                                                              \
    + ( __class__ *)sharedInstance {                               \
        static dispatch_once_t once;                               \
        static __class__ * singleton;                              \
        dispatch_once(&once, ^{                                    \
            singleton = [[ __class__ alloc] init];                 \
        });                                                        \
    return singleton;\
}

#undef prop_weak
#define prop_weak(__class__, __instance__)      \
        property(nonatomic, weak) __class__ * __instance__;
#undef prop_strong
#define prop_strong(__class__, __instance__)     \
        property(nonatomic, strong) __class__ * __instance__;


#ifndef def_porp_weak
#define def_porp_weak(__class__, __instance__)   \
    synthesize __instance__=_##__instance__
#endif

#ifndef def_porp_strong
#define def_prop_strong(class, instance) \
    synthesize instance=_##instance;
#endif

#endif
