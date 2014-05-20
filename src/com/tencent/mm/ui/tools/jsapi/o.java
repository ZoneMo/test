package com.tencent.mm.ui.tools.jsapi;

import android.webkit.WebView;
import com.tencent.mm.sdk.platformtools.aa;

final class o
  implements Runnable
{
  o(j paramj, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      j.c(this.hpi).loadUrl("javascript:WeixinJSBridge._handleMessageFromWeixin(" + this.hpk + ")");
      return;
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localException.getMessage();
      aa.c("MicroMsg.JsApiHandler", "doCallback, ex = %s", arrayOfObject);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.o
 * JD-Core Version:    0.6.2
 */