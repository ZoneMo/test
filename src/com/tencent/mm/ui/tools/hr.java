package com.tencent.mm.ui.tools;

import android.os.Bundle;
import com.tencent.mm.b;
import com.tencent.mm.plugin.webview.stub.al;
import com.tencent.mm.sdk.platformtools.aa;

final class hr
  implements ib
{
  private final String hnC = "weixin://feedback/";

  private hr(WebViewUI paramWebViewUI)
  {
  }

  public final String aOe()
  {
    return "weixin://feedback/";
  }

  public final boolean xL(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("MMActivity.OverrideEnterAnimation", 0);
    localBundle.putInt("MMActivity.OverrideExitAnimation", b.YF);
    try
    {
      this.hnv.cOg.b(7, localBundle);
      return true;
    }
    catch (Exception localException)
    {
      while (true)
        aa.w("MicroMsg.WebViewUI", "FeedbackJumpHandler, ex = " + localException.getMessage());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.hr
 * JD-Core Version:    0.6.2
 */