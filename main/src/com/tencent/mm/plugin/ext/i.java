package com.tencent.mm.plugin.ext;

import com.tencent.mm.c.a.aw;
import com.tencent.mm.c.a.ax;
import com.tencent.mm.c.a.ay;
import com.tencent.mm.modelvoice.af;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;

public final class i extends g
{
  af dfq;
  String rD = "";

  public final boolean a(e parame)
  {
    if (!(parame instanceof aw))
    {
      aa.aM("MicroMsg.SubCoreExtAgent", "mismatched event");
      return false;
    }
    aw localaw = (aw)parame;
    if (localaw.bMX.op == 1)
    {
      if (this.dfq == null)
        this.dfq = new af(al.getContext());
      localaw.bMY.bMh = this.dfq.et(localaw.bMX.username);
      this.rD = this.dfq.getFileName();
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(localaw.bMX.op);
      arrayOfObject2[1] = Boolean.valueOf(localaw.bMY.bMh);
      aa.e("MicroMsg.SubCoreExtAgent", "data.op = [%s], ret = [%s]", arrayOfObject2);
    }
    while (true)
    {
      return true;
      if ((localaw.bMX.op == 2) && (this.dfq != null))
      {
        localaw.bMY.rD = this.rD;
        localaw.bMY.bMh = this.dfq.pv();
        Object[] arrayOfObject1 = new Object[3];
        arrayOfObject1[0] = Integer.valueOf(localaw.bMX.op);
        arrayOfObject1[1] = this.rD;
        arrayOfObject1[2] = Boolean.valueOf(localaw.bMY.bMh);
        aa.e("MicroMsg.SubCoreExtAgent", "data.op = [%s], fileName = [%s], ret = [%s]", arrayOfObject1);
        this.rD = "";
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.i
 * JD-Core Version:    0.6.2
 */