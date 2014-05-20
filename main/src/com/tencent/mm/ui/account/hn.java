package com.tencent.mm.ui.account;

import android.text.style.ClickableSpan;
import android.view.View;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;

final class hn extends ClickableSpan
{
  hn(RegByMobileRegUI paramRegByMobileRegUI)
  {
  }

  public final void onClick(View paramView)
  {
    cj.w(this.gsP.aal(), this.gsP.getString(n.bDF));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.hn
 * JD-Core Version:    0.6.2
 */