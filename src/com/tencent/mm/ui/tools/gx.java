package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.plugin.webview.stub.al;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.w;

final class gx
  implements w
{
  gx(WebViewUI paramWebViewUI)
  {
  }

  public final void ai(int paramInt1, int paramInt2)
  {
    switch (paramInt2)
    {
    default:
      aa.d("MicroMsg.WebViewUI", "do del cancel");
      return;
    case -1:
    }
    Bundle localBundle = new Bundle();
    localBundle.putLong("fav_local_id", this.hnv.getIntent().getLongExtra("fav_local_id", -1L));
    try
    {
      if (this.hnv.cOg.q(localBundle))
      {
        aa.d("MicroMsg.WebViewUI", "del fav web url ok, finish webview ui");
        this.hnv.finish();
        return;
      }
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.WebViewUI", "try to del web url crash");
      return;
    }
    aa.w("MicroMsg.WebViewUI", "try to del web url fail");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gx
 * JD-Core Version:    0.6.2
 */