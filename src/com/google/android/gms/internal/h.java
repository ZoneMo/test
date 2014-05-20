package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

public final class h
{
  private final List Ly;
  private final Object Lz;

  private h(Object paramObject)
  {
    this.Lz = i.M(paramObject);
    this.Ly = new ArrayList();
  }

  public final h a(String paramString, Object paramObject)
  {
    this.Ly.add((String)i.M(paramString) + "=" + String.valueOf(paramObject));
    return this;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(100).append(this.Lz.getClass().getSimpleName()).append('{');
    int i = this.Ly.size();
    for (int j = 0; j < i; j++)
    {
      localStringBuilder.append((String)this.Ly.get(j));
      if (j < i - 1)
        localStringBuilder.append(", ");
    }
    return '}';
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.h
 * JD-Core Version:    0.6.2
 */