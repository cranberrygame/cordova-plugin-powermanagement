/**
 * Cordova (iOS) plugin for accessing the power-management functions of the device
 */
#import "PowerManagement.h"

/**
 * Actual implementation of the interface
 */
@implementation PowerManagement

- (void) acquire:(CDVInvokedUrlCommand*)command {
    CDVPluginResult* result = nil;
    
    // Acquire a reference to the local UIApplication singleton
    UIApplication* app = [UIApplication sharedApplication];
    
    if( ![app isIdleTimerDisabled] ) {
        [app setIdleTimerDisabled:true];
        
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    }
    else {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ILLEGAL_ACCESS_EXCEPTION messageAsString:@"IdleTimer already disabled"];
    }
    
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}


- (void) release:(CDVInvokedUrlCommand*)command {
    CDVPluginResult* result = nil;
    
    // Acquire a reference to the local UIApplication singleton
    UIApplication* app = [UIApplication sharedApplication];
    
    if( [app isIdleTimerDisabled] ) {
        [app setIdleTimerDisabled:false];
        
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    }
    else {
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ILLEGAL_ACCESS_EXCEPTION messageAsString:@"IdleTimer not disabled"];
    }
    
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}
@end
