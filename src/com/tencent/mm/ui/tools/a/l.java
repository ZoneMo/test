package com.tencent.mm.ui.tools.a;

import android.net.Uri;
import java.lang.ref.WeakReference;

public abstract class l
{
  final WeakReference hqh;
  final String id;

  protected l(Object paramObject, String paramString)
  {
    this.hqh = new WeakReference(paramObject);
    this.id = paramString;
  }

  public abstract Uri aNz();

  public final Object aOG()
  {
    return this.hqh.get();
  }

  public final String getKey()
  {
    if (this.id == null)
      throw new IllegalArgumentException("id should not be null");
    return this.id;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.l
 * JD-Core Version:    0.6.2
 */