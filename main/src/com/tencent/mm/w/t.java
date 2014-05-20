package com.tencent.mm.w;

import android.graphics.Bitmap;
import com.tencent.mm.a.d;
import com.tencent.mm.cache.a;

final class t
  implements a
{
  private d ctL = new d(5);

  public final Object get(Object paramObject)
  {
    return this.ctL.get((String)paramObject);
  }

  public final void h(Object paramObject1, Object paramObject2)
  {
    this.ctL.f((String)paramObject1, (Bitmap)paramObject2);
  }

  public final Object remove(Object paramObject)
  {
    this.ctL.remove((String)paramObject);
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.t
 * JD-Core Version:    0.6.2
 */