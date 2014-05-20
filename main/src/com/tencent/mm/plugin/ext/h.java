package com.tencent.mm.plugin.ext;

import com.tencent.mm.c.a.at;
import com.tencent.mm.c.a.au;
import com.tencent.mm.modelvoice.y;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;

public final class h extends g
{
  y cRj;

  public final boolean a(e parame)
  {
    int i = 1;
    if (!(parame instanceof at))
    {
      aa.aM("MicroMsg.SubCoreExtAgent", "mismatched event");
      i = 0;
    }
    at localat;
    do
    {
      return i;
      localat = (at)parame;
      if (localat.bMU.op == i)
      {
        if (this.cRj == null)
          this.cRj = new y(al.getContext());
        while (true)
        {
          localat.bMV.bMh = this.cRj.l(localat.bMU.rD, localat.bMU.bMW);
          return i;
          if (this.cRj.isPlaying())
            this.cRj.stop();
        }
      }
    }
    while ((localat.bMU.op != 2) || (this.cRj == null));
    this.cRj.stop();
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.h
 * JD-Core Version:    0.6.2
 */