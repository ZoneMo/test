package com.tencent.mm.app;

import android.app.Activity;
import android.widget.Toast;
import com.tencent.mm.pluginsdk.ui.tools.s;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.h;
import com.tencent.mm.ui.base.v;

final class l
  implements v
{
  l(k paramk, Activity paramActivity)
  {
  }

  public final void bo(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
      do
      {
        return;
        aa.d("MicroMsg.WorkerModelCallback", "click button 1, take picture");
      }
      while (s.a(this.bLc, h.cfG, "microMsg." + System.currentTimeMillis() + ".jpg", 3));
      Toast.makeText(this.bLc, this.bLc.getString(2131165340), 1).show();
      return;
    case 1:
    }
    aa.d("MicroMsg.WorkerModelCallback", "click button 0, pick up an image");
    s.p(this.bLc);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.l
 * JD-Core Version:    0.6.2
 */