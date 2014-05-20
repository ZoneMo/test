package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.a.b.h;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class eu$e extends ar
  implements SafeParcelable, h
{
  private static final HashMap NG;
  public static final cd Pw = new cd();
  private final int KH;
  private final Set NH;
  private String Og;
  private String Oj;
  private String PA;
  private String Px;
  private String Py;
  private String Pz;

  static
  {
    HashMap localHashMap = new HashMap();
    NG = localHashMap;
    localHashMap.put("familyName", ar.a.g("familyName", 2));
    NG.put("formatted", ar.a.g("formatted", 3));
    NG.put("givenName", ar.a.g("givenName", 4));
    NG.put("honorificPrefix", ar.a.g("honorificPrefix", 5));
    NG.put("honorificSuffix", ar.a.g("honorificSuffix", 6));
    NG.put("middleName", ar.a.g("middleName", 7));
  }

  public eu$e()
  {
    this.KH = 1;
    this.NH = new HashSet();
  }

  eu$e(Set paramSet, int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    this.NH = paramSet;
    this.KH = paramInt;
    this.Og = paramString1;
    this.Px = paramString2;
    this.Oj = paramString3;
    this.Py = paramString4;
    this.Pz = paramString5;
    this.PA = paramString6;
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
      return this.Og;
    case 3:
      return this.Px;
    case 4:
      return this.Oj;
    case 5:
      return this.Py;
    case 6:
      return this.Pz;
    case 7:
    }
    return this.PA;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof e))
      return false;
    if (this == paramObject)
      return true;
    e locale = (e)paramObject;
    Iterator localIterator = NG.values().iterator();
    while (localIterator.hasNext())
    {
      ar.a locala = (ar.a)localIterator.next();
      if (a(locala))
      {
        if (locale.a(locala))
        {
          if (!b(locala).equals(locale.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (locale.a(locala))
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

  public final String jE()
  {
    return this.Og;
  }

  public final String jH()
  {
    return this.Oj;
  }

  final Set jf()
  {
    return this.NH;
  }

  public final String kD()
  {
    return this.Px;
  }

  public final String kE()
  {
    return this.Py;
  }

  public final String kF()
  {
    return this.Pz;
  }

  public final String kG()
  {
    return this.PA;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    cd.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eu.e
 * JD-Core Version:    0.6.2
 */