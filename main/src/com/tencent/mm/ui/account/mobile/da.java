package com.tencent.mm.ui.account.mobile;

import android.widget.TextView;
import java.util.TimerTask;

final class da extends TimerTask
{
  da(MobileVerifyUI paramMobileVerifyUI)
  {
  }

  public final void run()
  {
    this.gwT.gwM.post(new db(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.da
 * JD-Core Version:    0.6.2
 */