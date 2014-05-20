package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.a.b.k;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class eu$i extends ar
  implements SafeParcelable, k
{
  private static final HashMap NG;
  public static final cj PG = new cj();
  private final int KH;
  private int LL;
  private final Set NH;
  private String PH;
  private final int PI = 4;
  private String mValue;

  static
  {
    HashMap localHashMap = new HashMap();
    NG = localHashMap;
    localHashMap.put("label", ar.a.g("label", 5));
    NG.put("type", ar.a.a("type", 6, new ao().c("home", 0).c("work", 1).c("blog", 2).c("profile", 3).c("other", 4).c("otherProfile", 5).c("contributor", 6).c("website", 7)));
    NG.put("value", ar.a.g("value", 4));
  }

  public eu$i()
  {
    this.KH = 2;
    this.NH = new HashSet();
  }

  eu$i(Set paramSet, int paramInt1, String paramString1, int paramInt2, String paramString2)
  {
    this.NH = paramSet;
    this.KH = paramInt1;
    this.PH = paramString1;
    this.LL = paramInt2;
    this.mValue = paramString2;
  }

  public static int kJ()
  {
    return 4;
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
    case 5:
      return this.PH;
    case 6:
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
    if (!(paramObject instanceof i))
      return false;
    if (this == paramObject)
      return true;
    i locali = (i)paramObject;
    Iterator localIterator = NG.values().iterator();
    while (localIterator.hasNext())
    {
      ar.a locala = (ar.a)localIterator.next();
      if (a(locala))
      {
        if (locali.a(locala))
        {
          if (!b(locala).equals(locali.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (locali.a(locala))
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

  public final String kI()
  {
    return this.PH;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    cj.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eu.i
 * JD-Core Version:    0.6.2
 */