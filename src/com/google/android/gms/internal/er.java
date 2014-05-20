package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.a.a.b;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class er extends ar
  implements SafeParcelable, b
{
  private static final HashMap NG;
  public static final bv OG = new bv();
  private final int KH;
  private final Set NH;
  private String OC;
  private ep OH;
  private ep OI;
  private String Ol;
  private String Ow;

  static
  {
    HashMap localHashMap = new HashMap();
    NG = localHashMap;
    localHashMap.put("id", ar.a.g("id", 2));
    NG.put("result", ar.a.a("result", 4, ep.class));
    NG.put("startDate", ar.a.g("startDate", 5));
    NG.put("target", ar.a.a("target", 6, ep.class));
    NG.put("type", ar.a.g("type", 7));
  }

  public er()
  {
    this.KH = 1;
    this.NH = new HashSet();
  }

  er(Set paramSet, int paramInt, String paramString1, ep paramep1, String paramString2, ep paramep2, String paramString3)
  {
    this.NH = paramSet;
    this.KH = paramInt;
    this.Ol = paramString1;
    this.OH = paramep1;
    this.Ow = paramString2;
    this.OI = paramep2;
    this.OC = paramString3;
  }

  protected final boolean a(ar.a parama)
  {
    return this.NH.contains(Integer.valueOf(parama.ip()));
  }

  protected final Object b(ar.a parama)
  {
    switch (parama.ip())
    {
    case 3:
    default:
      throw new IllegalStateException("Unknown safe parcelable id=" + parama.ip());
    case 2:
      return this.Ol;
    case 4:
      return this.OH;
    case 5:
      return this.Ow;
    case 6:
      return this.OI;
    case 7:
    }
    return this.OC;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof er))
      return false;
    if (this == paramObject)
      return true;
    er localer = (er)paramObject;
    Iterator localIterator = NG.values().iterator();
    while (localIterator.hasNext())
    {
      ar.a locala = (ar.a)localIterator.next();
      if (a(locala))
      {
        if (localer.a(locala))
        {
          if (!b(locala).equals(localer.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (localer.a(locala))
        return false;
    }
    return true;
  }

  public final String getId()
  {
    return this.Ol;
  }

  public final String getType()
  {
    return this.OC;
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

  public final String jS()
  {
    return this.Ow;
  }

  final ep jZ()
  {
    return this.OH;
  }

  final Set jf()
  {
    return this.NH;
  }

  final ep ka()
  {
    return this.OI;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    bv.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.er
 * JD-Core Version:    0.6.2
 */