package com.tencent.mm.modelsimple;

import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;

final class p
  implements m
{
  p(o paramo)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramx.getType());
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(paramInt2);
    aa.e("MicroMsg.NetSceneAuthFB", "dkcert getcert type:%d ret [%d,%d]", arrayOfObject);
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      n.b(this.cxk.cxj).a(paramInt1, paramInt2, "", this.cxk.cxj);
      return;
    }
    this.cxk.cxj.a(n.c(this.cxk.cxj), n.b(this.cxk.cxj));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.p
 * JD-Core Version:    0.6.2
 */