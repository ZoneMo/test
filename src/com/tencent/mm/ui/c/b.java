package com.tencent.mm.ui.c;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.mm.ui.a.a.m;

final class b extends Handler
{
  b(a parama)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    String str;
    Context localContext;
    a locala;
    if (paramMessage.what == 1000)
    {
      str = (String)paramMessage.obj;
      if (str == null)
        break label106;
      localContext = a.a(this.hsg);
      locala = this.hsg;
      if (localContext.checkCallingOrSelfPermission("android.permission.INTERNET") == 0)
        break label88;
      m.q(localContext, "Error", "Application requires permission to access the Internet");
    }
    while (true)
    {
      if (paramMessage.what == 1010)
      {
        g localg = (g)paramMessage.obj;
        a.b(this.hsg, localg);
      }
      return;
      label88: new h(localContext, str, locala).show();
      continue;
      label106: a.a(this.hsg, g.hsi);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.c.b
 * JD-Core Version:    0.6.2
 */