package com.tencent.mm.ui.tools;

import android.webkit.WebView;
import com.tencent.mm.pluginsdk.e.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.v;

final class hk
  implements v
{
  hk(WebViewUI paramWebViewUI, String paramString)
  {
  }

  public final void bo(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
      if (!WebViewUI.xJ(this.eeS))
      {
        aa.aM("MicroMsg.WebViewUI", "showLoadUrlMenu, canLoadUrl fail, url = " + this.eeS);
        WebViewUI.j(this.hnv);
        return;
      }
      this.hnv.cOj.loadUrl(this.eeS);
      return;
    case 1:
    }
    a.a(this.hnv, this.eeS, this.eeS);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.hk
 * JD-Core Version:    0.6.2
 */