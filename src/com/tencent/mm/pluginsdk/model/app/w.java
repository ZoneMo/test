package com.tencent.mm.pluginsdk.model.app;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.cj;

final class w extends Thread
{
  private String appId = null;
  private int cZr = 0;
  private Handler handler = null;
  private String url = null;

  public w(Handler paramHandler, String paramString1, int paramInt, String paramString2)
  {
    this.handler = paramHandler;
    this.appId = paramString1;
    this.cZr = paramInt;
    this.url = paramString2;
  }

  public final void run()
  {
    if ((this.appId == null) || (this.appId.length() == 0) || (this.url == null) || (this.url.length() == 0))
      return;
    byte[] arrayOfByte = cj.sX(this.url);
    y localy = new y(this.appId, this.cZr, arrayOfByte);
    Message localMessage = Message.obtain();
    localMessage.obj = localy;
    this.handler.sendMessage(localMessage);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.w
 * JD-Core Version:    0.6.2
 */