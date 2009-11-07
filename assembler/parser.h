#import <Foundation/Foundation.h>

extern int const A_COMMAND;
extern int const C_COMMAND;
extern int const L_COMMAND;

@interface Parser : NSObject {
  NSArray *commands;
  int commands_index;
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