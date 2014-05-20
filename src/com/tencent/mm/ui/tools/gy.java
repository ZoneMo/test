package com.tencent.mm.ui.tools;

import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;

final class gy
  implements View.OnClickListener
{
  gy(WebViewUI paramWebViewUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.hnv.cOj != null)
      this.hnv.cOj.goBack();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gy
 * JD-Core Version:    0.6.2
 */