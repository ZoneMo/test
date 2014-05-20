package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.a.b.g;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class eu$d extends ar
  implements SafeParcelable, g
{
  private static final HashMap NG;
  public static final cc Pv = new cc();
  private final int KH;
  private final Set NH;
  private String OD;

  static
  {
    HashMap localHashMap = new HashMap();
    NG = localHashMap;
    localHashMap.put("url", ar.a.g("url", 2));
  }

  public eu$d()
  {
    this.KH = 1;
    this.NH = new HashSet();
  }

  eu$d(Set paramSet, int paramInt, String paramString)
  {
    this.NH = paramSet;
    this.KH = paramInt;
    this.OD = paramString;
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
    }
    return this.OD;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof d))
      return false;
    if (this == paramObject)
      return true;
    d locald = (d)paramObject;
    Iterator localIterator = NG.values().iterator();
    while (localIterator.hasNext())
    {
      ar.a locala = (ar.a)localIterator.next();
      if (a(locala))
      {
        if (locald.a(locala))
        {
          if (!b(locala).equals(locald.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (locald.a(locala))
        return false;
    }
    return true;
  }

  public final String getUrl()
  {
    return this.OD;
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
    cc.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eu.d
 * JD-Core Version:    0.6.2
 */