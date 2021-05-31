#import "YoutubeDlPlugin.h"
#if __has_include(<youtube_dl/youtube_dl-Swift.h>)
#import <youtube_dl/youtube_dl-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "youtube_dl-Swift.h"
#endif

@implementation YoutubeDlPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftYoutubeDlPlugin registerWithRegistrar:registrar];
}
@end
