package com.tencent.mm.ui.contact.profile;

import android.os.Handler;
import com.tencent.mm.ui.base.ch;
import java.util.TimerTask;

final class av extends TimerTask
{
  av(ch paramch, Handler paramHandler)
  {
  }

  public final void run()
  {
    if (this.cQO != null)
    {
      this.cQO.dismiss();
      this.cQP.sendEmptyMessage(0);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.av
 * JD-Core Version:    0.6.2
 */