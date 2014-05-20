package com.tencent.mm.ui.account.mobile;

import android.database.ContentObserver;
import android.os.Handler;

public final class dr extends ContentObserver
{
  public dr(MobileVerifyUI paramMobileVerifyUI, Handler paramHandler)
  {
    super(paramHandler);
  }

  public final void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    if ((MobileVerifyUI.f(this.gwT) != 3) && (MobileVerifyUI.f(this.gwT) != 1))
      MobileVerifyUI.j(this.gwT);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.dr
 * JD-Core Version:    0.6.2
 */