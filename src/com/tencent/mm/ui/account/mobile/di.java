package com.tencent.mm.ui.account.mobile;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.tools.dg;

final class di
  implements View.OnClickListener
{
  private final int gwV = 0;
  private final int gwW = 1;
  private final int gwX = 2;
  private final int gwY = 3;
  private final int gwZ = 4;

  di(MobileVerifyUI paramMobileVerifyUI)
  {
  }

  public final void onClick(View paramView)
  {
    dg localdg = new dg(this.gwT);
    localdg.a(new dj(this));
    localdg.b(new dk(this));
    localdg.aNy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.di
 * JD-Core Version:    0.6.2
 */