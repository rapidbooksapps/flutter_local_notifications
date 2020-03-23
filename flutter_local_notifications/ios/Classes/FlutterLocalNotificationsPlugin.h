#import <Flutter/Flutter.h>
#import <UserNotifications/UserNotifications.h>

@interface FlutterLocalNotificationsPlugin : NSObject <FlutterPlugin>
+ (void) setLaunchPayload: (NSString*) payload;
+(FlutterLocalNotificationsPlugin*) instance;
@end
