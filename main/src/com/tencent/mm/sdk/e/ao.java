package com.tencent.mm.sdk.e;

import android.os.Looper;

public abstract class ao
{
  private final am gfD = new ap(this);

  public final void a(ar paramar)
  {
    if (paramar != null)
      this.gfD.a(paramar, Looper.getMainLooper());
  }

  public final void b(int paramInt, ao paramao, Object paramObject)
  {
    this.gfD.ah(new aq(this, paramInt, paramao, paramObject));
    this.gfD.Ei();
  }

  public final void b(ar paramar)
  {
    if (paramar != null)
      this.gfD.remove(paramar);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.e.ao
 * JD-Core Version:    0.6.2
 */