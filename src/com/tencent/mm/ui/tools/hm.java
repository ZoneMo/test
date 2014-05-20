package com.tencent.mm.ui.tools;

import android.os.Bundle;
import com.tencent.mm.plugin.webview.stub.al;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class hm
  implements ib
{
  public final String hnz = "weixin://addfriend/";

  private hm(WebViewUI paramWebViewUI)
  {
  }

  public final String aOe()
  {
    return "weixin://addfriend/";
  }

  public final boolean xL(String paramString)
  {
    if (!WebViewUI.a(this.hnv).aNQ().avP())
    {
      aa.e("MicroMsg.WebViewUI", "AddFriendHandler, permission fail");
      return true;
    }
    String str = paramString.substring(19);
    if (cj.hX(str))
      return false;
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("from_webview", true);
    localBundle.putString("userName", str);
    try
    {
      this.hnv.cOg.b(8, localBundle);
      return true;
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.WebViewUI", "AddFriendHandler, ex = " + localException.getMessage());
    }
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.hm
 * JD-Core Version:    0.6.2
 */