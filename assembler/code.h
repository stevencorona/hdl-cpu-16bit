#import <Foundation/Foundation.h>

@interface Code : NSObject {
  
}

+(NSString*)dest:(NSString*)mnemonic;
+(NSString*)comp:(NSString*)mnemonic;
+(NSString*)jump:(NSString*)mnemonic;

@end