package com.tencent.mm.a;

import com.tencent.mm.sdk.platformtools.af;

public final class d extends af
{
  private e bKf = null;

  public d(int paramInt)
  {
    super(paramInt);
  }

  public d(int paramInt, e parame)
  {
    super(paramInt);
    this.bKf = parame;
  }

  public final void clear()
  {
    super.g(-1);
  }

  protected final Object create(Object paramObject)
  {
    return super.create(paramObject);
  }

  protected final void entryRemoved(boolean paramBoolean, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    super.entryRemoved(paramBoolean, paramObject1, paramObject2, paramObject3);
    if ((this.bKf != null) && (paramObject3 == null))
      this.bKf.g(paramObject1, paramObject2);
  }

  public final void f(Object paramObject1, Object paramObject2)
  {
    if (paramObject2 == null)
      return;
    put(paramObject1, paramObject2);
  }

  public final void g(int paramInt)
  {
    super.g(paramInt);
  }

  public final void nc()
  {
    super.g(-1);
  }

  protected final int sizeOf(Object paramObject1, Object paramObject2)
  {
    return super.sizeOf(paramObject1, paramObject2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.a.d
 * JD-Core Version:    0.6.2
 */