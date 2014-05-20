package com.tencent.mm.modelsimple;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.st;
import com.tencent.mm.protocal.a.su;
import java.util.LinkedList;

public final class am extends x
  implements ab
{
  private m cjh;
  private final a cke;

  public am(int[] paramArrayOfInt)
  {
    b localb = new b();
    localb.a(new st());
    localb.b(new su());
    localb.es("/cgi-bin/micromsg-bin/sendinviteemail");
    localb.cN(116);
    localb.cO(41);
    localb.cP(1000000041);
    this.cke = localb.wx();
    LinkedList localLinkedList = new LinkedList();
    for (int i = 0; i < paramArrayOfInt.length; i++)
      localLinkedList.add(Integer.valueOf(paramArrayOfInt[i]));
    ((st)this.cke.wr()).fUx = localLinkedList;
    ((st)this.cke.wr()).fUw = localLinkedList.size();
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
    return 116;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.am
 * JD-Core Version:    0.6.2
 */