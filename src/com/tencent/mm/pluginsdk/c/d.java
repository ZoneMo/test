package com.tencent.mm.pluginsdk.c;

import com.tencent.mm.c.a.di;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.e.ai;
import com.tencent.mm.sdk.e.al;

public abstract class d
  implements al
{
  public int fgK = 0;

  public abstract ai Wr();

  public final void ca(String paramString)
  {
    di localdi = new di();
    localdi.bOp.bOq = lz(paramString);
    a.ayH().f(localdi);
  }

  public abstract e lz(String paramString);
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.c.d
 * JD-Core Version:    0.6.2
 */