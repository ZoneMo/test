package com.tencent.mm.ui.account.mobile;

import android.view.View;
import android.view.View.OnFocusChangeListener;

final class aw
  implements View.OnFocusChangeListener
{
  aw(MobileInputUI paramMobileInputUI)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    MobileInputUI.d(this.gwj).onFocusChange(paramView, paramBoolean);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.aw
 * JD-Core Version:    0.6.2
 */