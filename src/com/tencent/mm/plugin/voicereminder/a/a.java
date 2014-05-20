package com.tencent.mm.plugin.voicereminder.a;

import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.pi;
import com.tencent.mm.protocal.a.pj;
import java.util.LinkedList;

public final class a extends x
  implements ab
{
  private m cjh;
  private com.tencent.mm.n.a cke;

  public a(LinkedList paramLinkedList, int paramInt)
  {
    b localb = new b();
    localb.a(new pi());
    localb.b(new pj());
    localb.es("/cgi-bin/micromsg-bin/opvoicereminder");
    localb.cN(331);
    localb.cO(150);
    localb.cP(1000000150);
    this.cke = localb.wx();
    pi localpi = (pi)this.cke.wr();
    localpi.fBj = 1;
    localpi.fRL = paramLinkedList;
    localpi.fRK = paramInt;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 331;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.a
 * JD-Core Version:    0.6.2
 */