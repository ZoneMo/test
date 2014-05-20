package com.tencent.mapapi.map;

import java.util.LinkedHashMap;

final class aq
{
  private int Uc;
  byte[] Ui = new byte[0];
  private LinkedHashMap Wv;

  public aq(int paramInt)
  {
    this.Uc = paramInt;
    this.Wv = new ar(this, 1 + (int)Math.ceil(paramInt / 0.75F));
  }

  public final Object Q(Object paramObject)
  {
    synchronized (this.Ui)
    {
      Object localObject2 = this.Wv.get(paramObject);
      return localObject2;
    }
  }

  public final Object R(Object paramObject)
  {
    synchronized (this.Ui)
    {
      Object localObject2 = this.Wv.remove(paramObject);
      return localObject2;
    }
  }

  public final void e(Object paramObject1, Object paramObject2)
  {
    synchronized (this.Ui)
    {
      this.Wv.put(paramObject1, paramObject2);
      return;
    }
  }

  public final void lX()
  {
    synchronized (this.Ui)
    {
      this.Wv.clear();
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.aq
 * JD-Core Version:    0.6.2
 */