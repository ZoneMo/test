package com.tencent.mm.pluginsdk.model.app;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.List;

final class j extends Handler
{
  j(h paramh)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    y localy = (y)paramMessage.obj;
    v localv1 = new v(localy.appId, localy.cZr);
    if (h.b(this.fhj).contains(localv1))
    {
      h.b(this.fhj).remove(localv1);
      if (!ba.HE().c(localy.appId, localy.data, localy.cZr))
        aa.e("MicroMsg.AppIconService", "handleMessage, saveIcon fail");
    }
    while (h.c(this.fhj).size() > 0)
    {
      v localv2 = (v)h.c(this.fhj).remove(0);
      if (h.a(this.fhj, localv2))
        h.b(this.fhj).add(localv2);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.j
 * JD-Core Version:    0.6.2
 */