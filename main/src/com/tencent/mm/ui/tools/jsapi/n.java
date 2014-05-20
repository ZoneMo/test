package com.tencent.mm.ui.tools.jsapi;

import android.webkit.WebView;
import com.tencent.mm.sdk.platformtools.aa;

final class n
  implements Runnable
{
  n(j paramj, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      j.c(this.hpi).loadUrl("javascript:WeixinJSBridge._handleMessageFromWeixin(" + this.hpj + ")");
      return;
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localException.getMessage();
      aa.c("MicroMsg.JsApiHandler", "onActivityStateChanged, ex = %s", arrayOfObject);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.n
 * JD-Core Version:    0.6.2
 */