package com.tencent.mm.ui.account;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import com.tencent.mm.sdk.platformtools.ay;

final class kp
  implements View.OnFocusChangeListener
{
  kp(RegSetInfoUI paramRegSetInfoUI)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      RegSetInfoUI.r(this.gtZ);
      RegSetInfoUI.m(this.gtZ).bO(200L);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.kp
 * JD-Core Version:    0.6.2
 */