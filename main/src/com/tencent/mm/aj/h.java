package com.tencent.mm.aj;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class h extends Handler
{
  h(g paramg)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 2)
      if (f.a(this.cDJ.cDI) != null)
        f.a(this.cDJ.cDI).EI();
    label165: label197: 
    do
    {
      return;
      if (paramMessage.what == 0)
      {
        if (f.b(this.cDJ.cDI) == 0)
        {
          be.uA().a(349, this.cDJ.cDI);
          if (f.b(this.cDJ.cDI) != 0)
            break label197;
          if (f.c(this.cDJ.cDI))
            break label165;
          f.a(this.cDJ.cDI, new d(f.d(this.cDJ.cDI), 0));
        }
        while (true)
        {
          be.uA().d(f.e(this.cDJ.cDI));
          return;
          be.uA().a(206, this.cDJ.cDI);
          break;
          f.a(this.cDJ.cDI, new d(f.d(this.cDJ.cDI), 1));
          continue;
          f.a(this.cDJ.cDI, new b(f.d(this.cDJ.cDI), f.b(this.cDJ.cDI)));
        }
      }
    }
    while ((paramMessage.what != 3) || (f.a(this.cDJ.cDI) == null));
    String[] arrayOfString = new String[0];
    f.a(this.cDJ.cDI).a(arrayOfString, -1L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.aj.h
 * JD-Core Version:    0.6.2
 */