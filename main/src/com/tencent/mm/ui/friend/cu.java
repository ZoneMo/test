package com.tencent.mm.ui.friend;

import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;
import com.tencent.mm.ui.base.x;

final class cu extends Handler
{
  cu(ct paramct)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (((ct.a(this.hcr) != null) && (!ct.a(this.hcr).isShowing())) || (ct.b(this.hcr)));
    do
    {
      return;
      ct.c(this.hcr);
      ct.e(this.hcr).setProgress(ct.d(this.hcr));
      if (ct.d(this.hcr) < -2 + ct.e(this.hcr).getMax())
      {
        sendEmptyMessageDelayed(0, 1000L);
        return;
      }
      ct.f(this.hcr);
      ct.e(this.hcr).setIndeterminate(true);
    }
    while (ct.g(this.hcr));
    if (ct.a(this.hcr) != null)
      ct.a(this.hcr).dismiss();
    ct.h(this.hcr);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.cu
 * JD-Core Version:    0.6.2
 */