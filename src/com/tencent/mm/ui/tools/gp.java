package com.tencent.mm.ui.tools;

import android.view.MenuItem;
import android.widget.TextView;
import com.tencent.mm.ao.b;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.cb;
import java.util.HashMap;

final class gp
  implements cb
{
  gp(WebViewUI paramWebViewUI)
  {
  }

  public final void a(TextView paramTextView, MenuItem paramMenuItem)
  {
    String str1 = paramMenuItem.getTitle();
    String str2;
    if (paramTextView != null)
    {
      str2 = (String)WebViewUI.m(this.hnv).get(str1);
      if (cj.hX(str2))
        WebViewUI.b(paramTextView, str1);
    }
    else
    {
      return;
    }
    paramTextView.setText(b.e(this.hnv.aal(), str2, (int)paramTextView.getTextSize()));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gp
 * JD-Core Version:    0.6.2
 */