package com.tencent.mm.ui.tools;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.base.ce;

final class gw
  implements View.OnClickListener
{
  gw(gv paramgv)
  {
  }

  public final void onClick(View paramView)
  {
    if ((WebViewUI.z(this.hny.hnv) != null) && (WebViewUI.z(this.hny.hnv).isShowing()))
      WebViewUI.z(this.hny.hnv).dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gw
 * JD-Core Version:    0.6.2
 */