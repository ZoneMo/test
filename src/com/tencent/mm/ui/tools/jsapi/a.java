package com.tencent.mm.ui.tools.jsapi;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.y;

public final class a extends Handler
{
  private String bNG;
  private String bPX = null;
  private com.tencent.mm.plugin.webview.stub.ao feu;
  private ao hoN;
  private int len = 0;
  private String url;

  public a(com.tencent.mm.plugin.webview.stub.ao paramao, ao paramao1, String paramString1, String paramString2)
  {
    this.feu = paramao;
    this.hoN = paramao1;
    this.url = paramString1;
    this.bNG = paramString2;
  }

  private void a(ao paramao, String paramString)
  {
    if (p.aOA() != null)
      p.aOA().dgb = false;
    try
    {
      this.feu.b(paramao.hpK, paramString, ao.r(null));
      return;
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.AddEmojIconHandler", "onHandleEnd, ex = " + localException.getMessage());
    }
  }

  public final void eX(String paramString)
  {
    this.bPX = paramString;
  }

  public final String getURL()
  {
    return this.url;
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      a(this.hoN, "add_emoticon:unknown");
      return;
    case 10:
      int i = paramMessage.arg1;
      boolean bool = cj.hX(this.bPX);
      y localy = null;
      if (!bool)
      {
        localy = null;
        switch (i)
        {
        default:
        case 1:
        case 0:
        }
      }
      while (localy == null)
      {
        aa.e("MicroMsg.AddEmojIconHandler", "anna : add_emoticon fail insert db fail");
        a(this.hoN, "add_emoticon:unknown");
        return;
        localy = h.apj().a(this.bPX, "", y.ghm, y.ghr, this.len, this.url, this.bNG, "");
        continue;
        localy = h.apj().a(this.bPX, "", y.ghm, y.ghs, this.len, this.url, this.bNG, "");
      }
      aa.v("MicroMsg.AddEmojIconHandler", "anna : add_emoticon ok gif emojiUrl : " + this.url);
      a(this.hoN, "add_emoticon:ok");
      return;
    case 11:
      a(this.hoN, "add_emoticon:download_failed");
      return;
    case -1:
    }
    a(this.hoN, "add_emoticon:cancel");
  }

  public final void oz(int paramInt)
  {
    this.len = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.a
 * JD-Core Version:    0.6.2
 */