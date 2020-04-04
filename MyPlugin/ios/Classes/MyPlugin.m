#import "MyPlugin.h"

@implementation MyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"MyPlugin"
            binaryMessenger:[registrar messenger]];
  MyPlugin* instance = [[MyPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  }else if ([@"dartSendMessageToIOS" isEqualToString:call.method]){
      //dart 发送一些参数给iOS,收到消息之后做一些事情
      
      //dart传的参数字典也就是Map
      NSDictionary *args = call.arguments;
      NSLog(@"dart发送过来的数据:");
      NSLog(@"floatNumber: %@",args[@"floatNumber"]);
      NSLog(@"str: %@",args[@"str"]);
      NSLog(@"arr: %@",args[@"arr"]);
      NSLog(@"dict: %@",args[@"dict"]);
      NSLog(@"dict[key]: %@",args[@"dict"][@"key"]);

      //给flutter channel发送一些参数过去 dart收到会打印显示的
      result(@{
          @"float" : @(0.0666),
          @"int" : @(1111),
          @"strings" : @"哈哈哈哈,我是字符串了",
          @"array" : @[@"iOS",@"Swift",@"Flutter"],
          @"dict" : @{@"iOS":@"666"}
      });
      
  }else {
    result(FlutterMethodNotImplemented);
  }
}

@end
