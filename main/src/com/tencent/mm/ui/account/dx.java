package com.tencent.mm.ui.account;

import android.widget.Button;
import android.widget.TextView;
import java.util.TimerTask;

final class dx extends TimerTask
{
  dx(MobileVerifyUIOld paramMobileVerifyUIOld)
  {
  }

  public final void run()
  {
    if (MobileVerifyUIOld.a(this.gsa) == 1)
      MobileVerifyUIOld.d(this.gsa).post(new dy(this));
    do
    {
      return;
      if (MobileVerifyUIOld.a(this.gsa) == 2)
      {
        MobileVerifyUIOld.e(this.gsa).post(new dz(this));
        MobileVerifyUIOld.h(this.gsa);
        return;
      }
    }
    while (MobileVerifyUIOld.a(this.gsa) == 3);
    MobileVerifyUIOld.d(this.gsa).post(new ea(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.dx
 * JD-Core Version:    0.6.2
 */