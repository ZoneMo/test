package com.tencent.mm.ui.tools;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.webkit.CookieManager;
import android.webkit.WebView.HitTestResult;
import com.tencent.mm.plugin.webview.stub.al;

final class hj
  implements MenuItem.OnMenuItemClickListener
{
  hj(WebViewUI paramWebViewUI, WebView.HitTestResult paramHitTestResult)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    try
    {
      boolean bool2 = this.hnv.cOg.isSDCardAvailable();
      bool1 = bool2;
      String str = this.dTZ.getExtra();
      com.tencent.mm.pluginsdk.ui.tools.aa.b(this.hnv, str, CookieManager.getInstance().getCookie(str), bool1);
      return true;
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "onMenuItemClick fail, ex = " + localException.getMessage());
        boolean bool1 = false;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.hj
 * JD-Core Version:    0.6.2
 */