package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.a.b.j;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class eu$h extends ar
  implements SafeParcelable, j
{
  private static final HashMap NG;
  public static final ci PF = new ci();
  private final int KH;
  private final Set NH;
  private boolean Pu;
  private String mValue;

  static
  {
    HashMap localHashMap = new HashMap();
    NG = localHashMap;
    localHashMap.put("primary", ar.a.f("primary", 2));
    NG.put("value", ar.a.g("value", 3));
  }

  public eu$h()
  {
    this.KH = 1;
    this.NH = new HashSet();
  }

  eu$h(Set paramSet, int paramInt, boolean paramBoolean, String paramString)
  {
    this.NH = paramSet;
    this.KH = paramInt;
    this.Pu = paramBoolean;
    this.mValue = paramString;
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
      return Boolean.valueOf(this.Pu);
    case 3:
    }
    return this.mValue;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof h))
      return false;
    if (this == paramObject)
      return true;
    h localh = (h)paramObject;
    Iterator localIterator = NG.values().iterator();
    while (localIterator.hasNext())
    {
      ar.a locala = (ar.a)localIterator.next();
      if (a(locala))
      {
        if (localh.a(locala))
        {
          if (!b(locala).equals(localh.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (localh.a(locala))
        return false;
    }
    return true;
  }

  public final String getValue()
  {
    return this.mValue;
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

  public final boolean kC()
  {
    return this.Pu;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ci.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eu.h
 * JD-Core Version:    0.6.2
 */