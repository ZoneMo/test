package com.tencent.mm.ui.account;

import android.database.ContentObserver;
import android.os.Handler;

public final class fi extends ContentObserver
{
  public fi(MobileVerifyUIOld paramMobileVerifyUIOld, Handler paramHandler)
  {
    super(paramHandler);
  }

  public final void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    MobileVerifyUIOld.t(this.gsa);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.fi
 * JD-Core Version:    0.6.2
 */