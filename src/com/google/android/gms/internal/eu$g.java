package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.a.b.i;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class eu$g extends ar
  implements SafeParcelable, i
{
  private static final HashMap NG;
  public static final cg PB = new cg();
  private final int KH;
  private String KM;
  private int LL;
  private final Set NH;
  private String Of;
  private String Ow;
  private String PC;
  private String PD;
  private String PE;
  private boolean Pu;
  private String mName;

  static
  {
    HashMap localHashMap = new HashMap();
    NG = localHashMap;
    localHashMap.put("department", ar.a.g("department", 2));
    NG.put("description", ar.a.g("description", 3));
    NG.put("endDate", ar.a.g("endDate", 4));
    NG.put("location", ar.a.g("location", 5));
    NG.put("name", ar.a.g("name", 6));
    NG.put("primary", ar.a.f("primary", 7));
    NG.put("startDate", ar.a.g("startDate", 8));
    NG.put("title", ar.a.g("title", 9));
    NG.put("type", ar.a.a("type", 10, new ao().c("work", 0).c("school", 1)));
  }

  public eu$g()
  {
    this.KH = 1;
    this.NH = new HashSet();
  }

  eu$g(Set paramSet, int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean, String paramString6, String paramString7, int paramInt2)
  {
    this.NH = paramSet;
    this.KH = paramInt1;
    this.PC = paramString1;
    this.KM = paramString2;
    this.Of = paramString3;
    this.PD = paramString4;
    this.mName = paramString5;
    this.Pu = paramBoolean;
    this.Ow = paramString6;
    this.PE = paramString7;
    this.LL = paramInt2;
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
      return this.PC;
    case 3:
      return this.KM;
    case 4:
      return this.Of;
    case 5:
      return this.PD;
    case 6:
      return this.mName;
    case 7:
      return Boolean.valueOf(this.Pu);
    case 8:
      return this.Ow;
    case 9:
      return this.PE;
    case 10:
    }
    return Integer.valueOf(this.LL);
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof g))
      return false;
    if (this == paramObject)
      return true;
    g localg = (g)paramObject;
    Iterator localIterator = NG.values().iterator();
    while (localIterator.hasNext())
    {
      ar.a locala = (ar.a)localIterator.next();
      if (a(locala))
      {
        if (localg.a(locala))
        {
          if (!b(locala).equals(localg.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (localg.a(locala))
        return false;
    }
    return true;
  }

  public final String getDescription()
  {
    return this.KM;
  }

  public final String getLocation()
  {
    return this.PD;
  }

  public final String getName()
  {
    return this.mName;
  }

  public final String getTitle()
  {
    return this.PE;
  }

  public final int getType()
  {
    return this.LL;
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

  public final String jD()
  {
    return this.Of;
  }

  public final String jS()
  {
    return this.Ow;
  }

  final Set jf()
  {
    return this.NH;
  }

  public final boolean kC()
  {
    return this.Pu;
  }

  public final String kH()
  {
    return this.PC;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    cg.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eu.g
 * JD-Core Version:    0.6.2
 */