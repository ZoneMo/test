package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.a.b.d;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class eu$b$a extends ar
  implements SafeParcelable, d
{
  private static final HashMap NG;
  public static final bz Pn = new bz();
  private final int KH;
  private final Set NH;
  private int Po;
  private int Pp;

  static
  {
    HashMap localHashMap = new HashMap();
    NG = localHashMap;
    localHashMap.put("leftImageOffset", ar.a.d("leftImageOffset", 2));
    NG.put("topImageOffset", ar.a.d("topImageOffset", 3));
  }

  public eu$b$a()
  {
    this.KH = 1;
    this.NH = new HashSet();
  }

  eu$b$a(Set paramSet, int paramInt1, int paramInt2, int paramInt3)
  {
    this.NH = paramSet;
    this.KH = paramInt1;
    this.Po = paramInt2;
    this.Pp = paramInt3;
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
      return Integer.valueOf(this.Po);
    case 3:
    }
    return Integer.valueOf(this.Pp);
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a))
      return false;
    if (this == paramObject)
      return true;
    a locala = (a)paramObject;
    Iterator localIterator = NG.values().iterator();
    while (localIterator.hasNext())
    {
      ar.a locala1 = (ar.a)localIterator.next();
      if (a(locala1))
      {
        if (locala.a(locala1))
        {
          if (!b(locala1).equals(locala.b(locala1)))
            return false;
        }
        else
          return false;
      }
      else if (locala.a(locala1))
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

  public final int kA()
  {
    return this.Po;
  }

  public final int kB()
  {
    return this.Pp;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    bz.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eu.b.a
 * JD-Core Version:    0.6.2
 */