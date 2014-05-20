package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.a.b.f;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class eu$c extends ar
  implements SafeParcelable, f
{
  private static final HashMap NG;
  public static final cb Pt = new cb();
  private final int KH;
  private int LL;
  private final Set NH;
  private boolean Pu;
  private String mValue;

  static
  {
    HashMap localHashMap = new HashMap();
    NG = localHashMap;
    localHashMap.put("primary", ar.a.f("primary", 2));
    NG.put("type", ar.a.a("type", 3, new ao().c("home", 0).c("work", 1).c("other", 2)));
    NG.put("value", ar.a.g("value", 4));
  }

  public eu$c()
  {
    this.KH = 1;
    this.NH = new HashSet();
  }

  eu$c(Set paramSet, int paramInt1, boolean paramBoolean, int paramInt2, String paramString)
  {
    this.NH = paramSet;
    this.KH = paramInt1;
    this.Pu = paramBoolean;
    this.LL = paramInt2;
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
      return Integer.valueOf(this.LL);
    case 4:
    }
    return this.mValue;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof c))
      return false;
    if (this == paramObject)
      return true;
    c localc = (c)paramObject;
    Iterator localIterator = NG.values().iterator();
    while (localIterator.hasNext())
    {
      ar.a locala = (ar.a)localIterator.next();
      if (a(locala))
      {
        if (localc.a(locala))
        {
          if (!b(locala).equals(localc.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (localc.a(locala))
        return false;
    }
    return true;
  }

  public final int getType()
  {
    return this.LL;
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
    cb.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eu.c
 * JD-Core Version:    0.6.2
 */