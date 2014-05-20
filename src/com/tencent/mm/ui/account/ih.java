package com.tencent.mm.ui.account;

import android.os.CountDownTimer;
import android.widget.ListView;
import android.widget.ProgressBar;

final class ih extends CountDownTimer
{
  ih(RegByMobileWaitingSMSUI paramRegByMobileWaitingSMSUI, long paramLong)
  {
    super(paramLong, 1000L);
  }

  public final void onFinish()
  {
    RegByMobileWaitingSMSUI.d(this.gtp);
  }

  public final void onTick(long paramLong)
  {
    int i = (int)(RegByMobileWaitingSMSUI.e(this.gtp) - paramLong / 1000L);
    RegByMobileWaitingSMSUI.f(this.gtp).setProgress(i);
    if (i % 2 == 0)
    {
      RegByMobileWaitingSMSUI.g(this.gtp).eQ(this.gtp.gtl[(i / 2 % this.gtp.gtl.length)]);
      RegByMobileWaitingSMSUI.h(this.gtp).post(new ii(this));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ih
 * JD-Core Version:    0.6.2
 */