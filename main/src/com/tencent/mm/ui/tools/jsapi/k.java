package com.tencent.mm.ui.tools.jsapi;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Vector;

final class k extends Handler
{
  k(j paramj)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
      String str = (String)paramMessage.obj;
      if (!cj.hX(str))
        j.a(this.hpi).add(str);
      j.b(this.hpi);
      return;
    case 2:
    }
    aa.v("MicroMsg.JsApiHandler", "handle msg from wx done, msg = " + paramMessage.obj);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.k
 * JD-Core Version:    0.6.2
 */