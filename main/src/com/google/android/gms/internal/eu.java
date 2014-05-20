package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.a.b.a;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class eu extends ar
  implements SafeParcelable, a
{
  private static final HashMap NG;
  public static final bw OJ = new bw();
  private final int KH;
  private String KJ;
  private final Set NH;
  private String OD;
  private String OK;
  private eu.a OL;
  private String OM;
  private String ON;
  private int OO;
  private eu.b OP;
  private String OQ;
  private List OR;
  private int OS;
  private eu.d OT;
  private boolean OU;
  private String OV;
  private eu.e OW;
  private String OX;
  private int OY;
  private List OZ;
  private String Ol;
  private List Pa;
  private int Pb;
  private int Pc;
  private String Pd;
  private List Pe;
  private boolean Pf;

  static
  {
    HashMap localHashMap = new HashMap();
    NG = localHashMap;
    localHashMap.put("aboutMe", ar.a.g("aboutMe", 2));
    NG.put("ageRange", ar.a.a("ageRange", 3, eu.a.class));
    NG.put("birthday", ar.a.g("birthday", 4));
    NG.put("braggingRights", ar.a.g("braggingRights", 5));
    NG.put("circledByCount", ar.a.d("circledByCount", 6));
    NG.put("cover", ar.a.a("cover", 7, eu.b.class));
    NG.put("currentLocation", ar.a.g("currentLocation", 8));
    NG.put("displayName", ar.a.g("displayName", 9));
    NG.put("emails", ar.a.b("emails", 10, eu.c.class));
    NG.put("gender", ar.a.a("gender", 12, new ao().c("male", 0).c("female", 1).c("other", 2)));
    NG.put("id", ar.a.g("id", 14));
    NG.put("image", ar.a.a("image", 15, eu.d.class));
    NG.put("isPlusUser", ar.a.f("isPlusUser", 16));
    NG.put("language", ar.a.g("language", 18));
    NG.put("name", ar.a.a("name", 19, eu.e.class));
    NG.put("nickname", ar.a.g("nickname", 20));
    NG.put("objectType", ar.a.a("objectType", 21, new ao().c("person", 0).c("page", 1)));
    NG.put("organizations", ar.a.b("organizations", 22, eu.g.class));
    NG.put("placesLived", ar.a.b("placesLived", 23, eu.h.class));
    NG.put("plusOneCount", ar.a.d("plusOneCount", 24));
    NG.put("relationshipStatus", ar.a.a("relationshipStatus", 25, new ao().c("single", 0).c("in_a_relationship", 1).c("engaged", 2).c("married", 3).c("its_complicated", 4).c("open_relationship", 5).c("widowed", 6).c("in_domestic_partnership", 7).c("in_civil_union", 8)));
    NG.put("tagline", ar.a.g("tagline", 26));
    NG.put("url", ar.a.g("url", 27));
    NG.put("urls", ar.a.b("urls", 28, eu.i.class));
    NG.put("verified", ar.a.f("verified", 29));
  }

  public eu()
  {
    this.KH = 2;
    this.NH = new HashSet();
  }

  eu(Set paramSet, int paramInt1, String paramString1, eu.a parama, String paramString2, String paramString3, int paramInt2, eu.b paramb, String paramString4, String paramString5, List paramList1, int paramInt3, String paramString6, eu.d paramd, boolean paramBoolean1, String paramString7, eu.e parame, String paramString8, int paramInt4, List paramList2, List paramList3, int paramInt5, int paramInt6, String paramString9, String paramString10, List paramList4, boolean paramBoolean2)
  {
    this.NH = paramSet;
    this.KH = paramInt1;
    this.OK = paramString1;
    this.OL = parama;
    this.OM = paramString2;
    this.ON = paramString3;
    this.OO = paramInt2;
    this.OP = paramb;
    this.OQ = paramString4;
    this.KJ = paramString5;
    this.OR = paramList1;
    this.OS = paramInt3;
    this.Ol = paramString6;
    this.OT = paramd;
    this.OU = paramBoolean1;
    this.OV = paramString7;
    this.OW = parame;
    this.OX = paramString8;
    this.OY = paramInt4;
    this.OZ = paramList2;
    this.Pa = paramList3;
    this.Pb = paramInt5;
    this.Pc = paramInt6;
    this.Pd = paramString9;
    this.OD = paramString10;
    this.Pe = paramList4;
    this.Pf = paramBoolean2;
  }

  protected final boolean a(ar.a parama)
  {
    return this.NH.contains(Integer.valueOf(parama.ip()));
  }

  protected final Object b(ar.a parama)
  {
    switch (parama.ip())
    {
    case 11:
    case 13:
    case 17:
    default:
      throw new IllegalStateException("Unknown safe parcelable id=" + parama.ip());
    case 2:
      return this.OK;
    case 3:
      return this.OL;
    case 4:
      return this.OM;
    case 5:
      return this.ON;
    case 6:
      return Integer.valueOf(this.OO);
    case 7:
      return this.OP;
    case 8:
      return this.OQ;
    case 9:
      return this.KJ;
    case 10:
      return this.OR;
    case 12:
      return Integer.valueOf(this.OS);
    case 14:
      return this.Ol;
    case 15:
      return this.OT;
    case 16:
      return Boolean.valueOf(this.OU);
    case 18:
      return this.OV;
    case 19:
      return this.OW;
    case 20:
      return this.OX;
    case 21:
      return Integer.valueOf(this.OY);
    case 22:
      return this.OZ;
    case 23:
      return this.Pa;
    case 24:
      return Integer.valueOf(this.Pb);
    case 25:
      return Integer.valueOf(this.Pc);
    case 26:
      return this.Pd;
    case 27:
      return this.OD;
    case 28:
      return this.Pe;
    case 29:
    }
    return Boolean.valueOf(this.Pf);
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof eu))
      return false;
    if (this == paramObject)
      return true;
    eu localeu = (eu)paramObject;
    Iterator localIterator = NG.values().iterator();
    while (localIterator.hasNext())
    {
      ar.a locala = (ar.a)localIterator.next();
      if (a(locala))
      {
        if (localeu.a(locala))
        {
          if (!b(locala).equals(localeu.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (localeu.a(locala))
        return false;
    }
    return true;
  }

  public final String getDisplayName()
  {
    return this.KJ;
  }

  public final String getId()
  {
    return this.Ol;
  }

  public final String getLanguage()
  {
    return this.OV;
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

  public final String kb()
  {
    return this.OK;
  }

  final eu.a kc()
  {
    return this.OL;
  }

  public final String kd()
  {
    return this.OM;
  }

  public final String ke()
  {
    return this.ON;
  }

  public final int kf()
  {
    return this.OO;
  }

  final eu.b kg()
  {
    return this.OP;
  }

  public final String kh()
  {
    return this.OQ;
  }

  final List ki()
  {
    return this.OR;
  }

  public final int kj()
  {
    return this.OS;
  }

  final eu.d kk()
  {
    return this.OT;
  }

  public final boolean kl()
  {
    return this.OU;
  }

  final eu.e km()
  {
    return this.OW;
  }

  public final String kn()
  {
    return this.OX;
  }

  public final int ko()
  {
    return this.OY;
  }

  final List kp()
  {
    return this.OZ;
  }

  final List kq()
  {
    return this.Pa;
  }

  public final int kr()
  {
    return this.Pb;
  }

  public final int ks()
  {
    return this.Pc;
  }

  public final String kt()
  {
    return this.Pd;
  }

  final List ku()
  {
    return this.Pe;
  }

  public final boolean kv()
  {
    return this.Pf;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    bw.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.eu
 * JD-Core Version:    0.6.2
 */