package com.tencent.mm.pluginsdk.ui.applet;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.cj;

final class h extends Thread
{
  private Handler handler;
  private String url;

  h(String paramString, Handler paramHandler)
  {
    this.url = paramString;
    this.handler = paramHandler;
  }

  public final void run()
  {
    byte[] arrayOfByte = cj.sX(this.url);
    Message localMessage = Message.obtain();
    localMessage.obj = arrayOfByte;
    this.handler.sendMessage(localMessage);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.h
 * JD-Core Version:    0.6.2
 */