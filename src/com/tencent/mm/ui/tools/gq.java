package com.tencent.mm.ui.tools;

import android.app.Activity;
import android.content.Intent;
import android.view.MenuItem;
import android.view.View;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.cd;

final class gq
  implements cd
{
  gq(WebViewUI paramWebViewUI)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      String str6 = paramMenuItem.getTitle();
      if (!cj.hX(str6))
        WebViewUI.d(this.hnv, str6);
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
      int i = this.hnv.getIntent().getIntExtra("type", 0);
      String str2 = cj.hW(this.hnv.getIntent().getStringExtra("title"));
      String str3 = this.hnv.aal().getString(n.buJ);
      if (str2.length() > 0)
        str3 = "#" + this.hnv.getString(n.bqu) + "-" + str2 + "#";
      if (i == 11)
        str3 = this.hnv.aal().getString(n.buK);
      String str4 = this.hnv.getIntent().getStringExtra("shortUrl");
      if (cj.hX(str4))
        str4 = this.hnv.getIntent().getStringExtra("rawUrl");
      String str5 = this.hnv.getIntent().getStringExtra("webpageTitle");
      if (!cj.hX(str5))
      {
        WebViewUI.a(this.hnv, i, str4, str3 + " " + str5);
        return;
      }
      WebViewUI.a(this.hnv, i, str4, str3);
      return;
    case 5:
      String str1 = this.hnv.getIntent().getStringExtra("srcUsername");
      WebViewUI.b(this.hnv, "Contact_Scene");
      WebViewUI.c(this.hnv, str1);
      return;
    case 11:
      if (WebViewUI.i(this.hnv).getVisibility() == 8)
      {
        WebViewUI.i(this.hnv).setVisibility(0);
        return;
      }
      WebViewUI.i(this.hnv).setVisibility(8);
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
 * Qualified Name:     com.tencent.mm.ui.tools.gq
 * JD-Core Version:    0.6.2
 */