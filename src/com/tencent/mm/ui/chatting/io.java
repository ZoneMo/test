package com.tencent.mm.ui.chatting;

import com.tencent.mm.j.b;
import com.tencent.mm.model.al;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;

final class io
  implements Runnable
{
  io(ChattingUI paramChattingUI, String paramString1, String paramString2, long paramLong)
  {
  }

  public final void run()
  {
    String str = this.gQd;
    if ((w.cp(this.csq)) && (!au.R(str, "").startsWith("<")))
    {
      int i = this.gQd.indexOf(':');
      if (i != -1)
        str = this.gQd.substring(i + 1);
    }
    b localb = b.bR(cj.sT(str));
    if (localb != null)
      switch (localb.type)
      {
      default:
      case 3:
      }
    while (true)
    {
      return;
      if ((be.nS() != null) && (be.nS().op() != null) && (be.nS().oo() == 0))
        try
        {
          long l = Long.parseLong(be.nS().op());
          if (this.gQe == l)
          {
            an.i(new ip(this));
            return;
          }
        }
        catch (Exception localException)
        {
        }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.io
 * JD-Core Version:    0.6.2
 */