package com.tencent.mm.ui.tools;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.tools.jsapi.j;

final class hv
  implements ib
{
  private hv(WebViewUI paramWebViewUI)
  {
  }

  public final String aOe()
  {
    return "weixin://profile/";
  }

  public final boolean xL(String paramString)
  {
    String str = paramString.substring(17);
    if ((str == null) || (str.length() == 0))
    {
      aa.e("MicroMsg.WebViewUI", "handleUrl fail, username is null");
      return true;
    }
    this.hnv.hnc.xQ(str);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.hv
 * JD-Core Version:    0.6.2
 */