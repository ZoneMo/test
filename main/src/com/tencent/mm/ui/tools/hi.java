package com.tencent.mm.ui.tools;

import android.view.View;
import android.view.View.OnLongClickListener;
import android.webkit.WebView;
import android.webkit.WebView.HitTestResult;
import com.tencent.mm.plugin.webview.stub.al;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class hi
  implements View.OnLongClickListener
{
  hi(WebViewUI paramWebViewUI)
  {
  }

  private boolean aOd()
  {
    WebView.HitTestResult localHitTestResult = this.hnv.cOj.getHitTestResult();
    if ((localHitTestResult == null) || (cj.hX(localHitTestResult.getExtra())))
    {
      aa.e("MicroMsg.WebViewUI", "hittestresult getExtra is null");
      return false;
    }
    boolean bool2;
    try
    {
      boolean bool3 = this.hnv.cOg.aH(localHitTestResult.getExtra());
      bool1 = bool3;
      if (!bool1);
    }
    catch (Exception localException1)
    {
      try
      {
        boolean bool1;
        this.hnv.cOg.pY(localHitTestResult.getExtra());
        for (bool2 = bool1; !bool2; bool2 = bool1)
        {
          WebViewUI.a(this.hnv, localHitTestResult.getExtra());
          return true;
          localException1 = localException1;
          bool1 = true;
          label99: aa.w("MicroMsg.WebViewUI", "postBinded, handleEvents, ex = " + localException1.getMessage());
        }
      }
      catch (Exception localException2)
      {
        break label99;
      }
    }
    return bool2;
  }

  public final boolean onLongClick(View paramView)
  {
    return aOd();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.hi
 * JD-Core Version:    0.6.2
 */