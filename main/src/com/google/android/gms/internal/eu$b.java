package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.a.b.c;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class eu$b extends ar
  implements SafeParcelable, c
{
  private static final HashMap NG;
  public static final by Pj = new by();
  private final int KH;
  private final Set NH;
  private eu.b.a Pk;
  private eu.b.b Pl;
  private int Pm;

  static
  {
    HashMap localHashMap = new HashMap();
    NG = localHashMap;
    localHashMap.put("coverInfo", ar.a.a("coverInfo", 2, eu.b.a.class));
    NG.put("coverPhoto", ar.a.a("coverPhoto", 3, eu.b.b.class));
    NG.put("layout", ar.a.a("layout", 4, new ao().c("banner", 0)));
  }

  public eu$b()
  {
    this.KH = 1;
    this.NH = new HashSet();
  }

  eu$b(Set paramSet, int paramInt1, eu.b.a parama, eu.b.b paramb, int paramInt2)
  {
    this.NH = paramSet;
    this.KH = paramInt1;
    this.Pk = parama;
    this.Pl = paramb;
    this.Pm = paramInt2;
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
      return this.Pk;
    case 3:
      return this.Pl;
    case 4:
    }
    return Integer.valueOf(this.Pm);
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

  final eu.b.a kx()
  {
    return this.Pk;
  }

  final eu.b.b ky()
  {
    return this.Pl;
  }

  public final int kz()
  {
    return this.Pm;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    by.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eu.b
 * JD-Core Version:    0.6.2
 */