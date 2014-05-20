package com.tencent.mm.ui.tools;

import com.tencent.mm.a.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.tools.jsapi.j;

final class ia
  implements ib
{
  private ia(WebViewUI paramWebViewUI)
  {
  }

  public final String aOe()
  {
    return "weixin://private/setresult/";
  }

  public final boolean xL(String paramString)
  {
    String str1 = paramString.substring(27);
    if (cj.hX(str1))
    {
      aa.e("MicroMsg.WebViewUI", "SetResultHandler handleUrl fail, value is null");
      return false;
    }
    int i = str1.indexOf("&");
    if (i <= 0)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      aa.b("MicroMsg.WebViewUI", "SetResultHandler, handleUrl fail, invalid splitorIdx = %d", arrayOfObject);
      return false;
    }
    String str2 = str1.substring(0, i);
    byte[] arrayOfByte = a.decode(str1.substring(i + 1));
    if (arrayOfByte == null);
    for (String str3 = null; ; str3 = new String(arrayOfByte))
    {
      aa.e("MicroMsg.WebViewUI", "SetResultHandler, scene = %s, result = %s", new Object[] { str2, str3 });
      this.hnv.hnc.keep_setReturnValue(str2, str3);
      return true;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ia
 * JD-Core Version:    0.6.2
 */