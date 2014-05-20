package com.tencent.mm.model;

import com.tencent.mm.n.n;
import com.tencent.mm.n.x;
import java.lang.ref.WeakReference;

public final class dx
  implements n
{
  private final WeakReference ckd;

  public dx(n paramn)
  {
    this.ckd = new WeakReference(paramn);
  }

  public final void a(int paramInt1, int paramInt2, x paramx)
  {
    n localn = (n)this.ckd.get();
    if (localn == null)
      return;
    localn.a(paramInt1, paramInt2, paramx);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.dx
 * JD-Core Version:    0.6.2
 */