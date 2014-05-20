package com.tencent.mm.model;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.mm.a.c;
import com.tencent.mm.sdk.platformtools.an;

final class z extends Handler
{
  z(y paramy, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    try
    {
      if (this.chV.chU != null)
      {
        ac localac = (ac)paramMessage.obj;
        int i = c.ar(localac.filename);
        if (i > 0)
          ar.ua().C(i, 0);
        an.i(new aa(this, localac, paramMessage));
      }
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.z
 * JD-Core Version:    0.6.2
 */