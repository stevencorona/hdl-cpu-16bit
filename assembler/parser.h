#import <Foundation/Foundation.h>

typedef enum Commands {
  A_COMMAND,
  C_COMMAND,
  L_COMMAND
} COMMAND;

@interface Parser : NSObject {
  NSArray *commands;
  int commands_index;
}

-(id)initWithFile: (NSString*)file;
-(bool)hasMoreCommands;
-(void)advance;
-(COMMAND)commandType;
-(NSString*)symbol;
-(NSString*)dest;
-(NSString*)comp;
-(NSString*)jump;


@end