#import <Foundation/Foundation.h>

@interface Parser : NSObject {
  
}

-(id)initWithFile: (NSString*)file;
-(bool)hasMoreCommands;
-(void)advance;
-(int)commandType;
-(NSString*)symbol;
-(NSString*)dest;
-(NSString*)comp;
-(NSString*)jump;


@end