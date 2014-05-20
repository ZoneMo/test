package com.tencent.mm.modelsimple;

import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;

final class k
  implements m
{
  k(j paramj)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramx.getType());
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(paramInt2);
    aa.e("MicroMsg.NetSceneAuth", "dkcert getcert type:%d ret [%d,%d]", arrayOfObject);
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      i.b(this.cxf.cxe).a(paramInt1, paramInt2, "", this.cxf.cxe);
      return;
    }
    this.cxf.cxe.a(i.c(this.cxf.cxe), i.b(this.cxf.cxe));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.k
 * JD-Core Version:    0.6.2
 */