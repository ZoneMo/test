package com.tencent.mm.ui.contact.profile;

import android.app.ProgressDialog;
import android.os.Handler;
import java.util.TimerTask;

final class bi extends TimerTask
{
  bi(ProgressDialog paramProgressDialog, Handler paramHandler)
  {
  }

  public final void run()
  {
    if (this.dNA != null)
    {
      this.dNA.dismiss();
      this.cQP.sendEmptyMessage(0);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.bi
 * JD-Core Version:    0.6.2
 */