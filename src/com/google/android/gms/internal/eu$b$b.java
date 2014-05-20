package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.a.b.e;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class eu$b$b extends ar
  implements SafeParcelable, e
{
  private static final HashMap NG;
  public static final ca Pq = new ca();
  private final int KH;
  private final Set NH;
  private String OD;
  private int Pr;
  private int Ps;

  static
  {
    HashMap localHashMap = new HashMap();
    NG = localHashMap;
    localHashMap.put("height", ar.a.d("height", 2));
    NG.put("url", ar.a.g("url", 3));
    NG.put("width", ar.a.d("width", 4));
  }

  public eu$b$b()
  {
    this.KH = 1;
    this.NH = new HashSet();
  }

  eu$b$b(Set paramSet, int paramInt1, int paramInt2, String paramString, int paramInt3)
  {
    this.NH = paramSet;
    this.KH = paramInt1;
    this.Pr = paramInt2;
    this.OD = paramString;
    this.Ps = paramInt3;
  }

  protected final boolean a(ar.a parama)
  {
    return this.NH.contains(Integer.valueOf(parama.ip()));
  }

  protected final Object b(ar.a parama)
  {
    switch (parama.ip())
    {
    default:
      throw new IllegalStateException("Unknown safe parcelable id=" + parama.ip());
    case 2:
      return Integer.valueOf(this.Pr);
    case 3:
      return this.OD;
    case 4:
    }
    return Integer.valueOf(this.Ps);
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b))
      return false;
    if (this == paramObject)
      return true;
    b localb = (b)paramObject;
    Iterator localIterator = NG.values().iterator();
    while (localIterator.hasNext())
    {
      ar.a locala = (ar.a)localIterator.next();
      if (a(locala))
      {
        if (localb.a(locala))
        {
          if (!b(locala).equals(localb.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (localb.a(locala))
        return false;
    }
    return true;
  }

  public final int getHeight()
  {
    return this.Pr;
  }

  public final String getUrl()
  {
    return this.OD;
  }

  public final int getWidth()
  {
    return this.Ps;
  }

  final int hH()
  {
    return this.KH;
  }

  public final int hashCode()
  {
    Iterator localIterator = NG.values().iterator();
    int i = 0;
    ar.a locala;
    if (localIterator.hasNext())
    {
      locala = (ar.a)localIterator.next();
      if (!a(locala))
        break label66;
    }
    label66: for (int j = i + locala.ip() + b(locala).hashCode(); ; j = i)
    {
      i = j;
      break;
      return i;
    }
  }

  public final HashMap ih()
  {
    return NG;
  }

  protected final Object ii()
  {
    return null;
  }

  protected final boolean ij()
  {
    return false;
  }

  final Set jf()
  {
    return this.NH;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ca.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eu.b.b
 * JD-Core Version:    0.6.2
 */