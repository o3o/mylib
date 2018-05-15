/**
 * Canali di comunicazioni verso le periferiche
 */
module mylib.channel;
/**
 * Descrive un canale binario di comunicazione generico
 */
interface IChannel {
   /**
    * Nome del canale (tipicamente ip)
    */
   @property string name();
   ubyte[] send(const(ubyte[]) msg);
   string sendMsg(string msg);
}

class DemoChannel: IChannel {
   @property string name() {
      return "demo";
   }

   ubyte[] send(const(ubyte[]) msg) {
      return [0];
   }

   string sendMsg(string msg) {
      return "";
   }
}


void test(IChannel c) {
   import std.stdio;
   writeln(c.name);
}
