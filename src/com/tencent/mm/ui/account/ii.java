package com.tencent.mm.ui.account;

import android.os.Build.VERSION;
import android.widget.ListView;

final class ii
  implements Runnable
{
  ii(ih paramih)
  {
  }

  public final void run()
  {
    if (Build.VERSION.SDK_INT >= 8)
    {
      RegByMobileWaitingSMSUI.h(this.gtq.gtp).smoothScrollToPosition(-1 + RegByMobileWaitingSMSUI.g(this.gtq.gtp).getCount());
      return;
    }
    RegByMobileWaitingSMSUI.h(this.gtq.gtp).setSelection(-1 + RegByMobileWaitingSMSUI.g(this.gtq.gtp).getCount());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ii
 * JD-Core Version:    0.6.2
 */