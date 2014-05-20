package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.view.MenuItem;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.cd;

final class gm
  implements cd
{
  gm(WebViewUI paramWebViewUI)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      String str4 = paramMenuItem.getTitle();
      if (!cj.hX(str4))
        WebViewUI.d(this.hnv, str4);
      return;
    case 1:
      WebViewUI.n(this.hnv);
      return;
    case 2:
      WebViewUI.o(this.hnv);
      return;
    case 3:
      WebViewUI.p(this.hnv);
      return;
    case 4:
      String str2 = this.hnv.getIntent().getStringExtra("webpageTitle");
      String str3 = this.hnv.getIntent().getStringExtra("shortUrl");
      if (cj.hX(str3))
        str3 = this.hnv.getIntent().getStringExtra("rawUrl");
      WebViewUI.a(this.hnv, 0, str3, str2);
      return;
    case 5:
      WebViewUI.b(this.hnv, "Contact_Scene");
      String str1 = this.hnv.getIntent().getStringExtra("srcUsername");
      WebViewUI.c(this.hnv, str1);
      return;
    case 6:
      WebViewUI.q(this.hnv);
      return;
    case 7:
      WebViewUI.r(this.hnv);
      return;
    case 8:
      WebViewUI.s(this.hnv);
      return;
    case 9:
      WebViewUI.t(this.hnv);
      return;
    case 10:
    }
    WebViewUI.u(this.hnv);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gm
 * JD-Core Version:    0.6.2
 */