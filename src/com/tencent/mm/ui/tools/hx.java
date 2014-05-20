package com.tencent.mm.ui.tools;

import com.tencent.mm.n;
import com.tencent.mm.ui.base.h;

final class hx
  implements ib
{
  private hx(WebViewUI paramWebViewUI)
  {
  }

  public final String aOe()
  {
    return "weixin://readershare/";
  }

  public final boolean xL(String paramString)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.hnv.getString(n.buH);
    h.b(this.hnv, "", arrayOfString, "", new hy(this));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.hx
 * JD-Core Version:    0.6.2
 */