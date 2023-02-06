#import "LogkarPlugin.h"
#if __has_include(<logkar/logkar-Swift.h>)
#import <logkar/logkar-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "logkar-Swift.h"
#endif

@implementation LogkarPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLogkarPlugin registerWithRegistrar:registrar];
}
@end
