package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.plus.a.a.a;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class ep extends ar
  implements SafeParcelable, a
{
  public static final bu NF = new bu();
  private static final HashMap NG;
  private final int KH;
  private String KM;
  private double MK;
  private double ML;
  private final Set NH;
  private ep NI;
  private List NJ;
  private ep NK;
  private String NL;
  private String NM;
  private String NN;
  private List NO;
  private int NP;
  private List NQ;
  private ep NR;
  private List NS;
  private String NT;
  private String NU;
  private ep NV;
  private String NW;
  private String NX;
  private String NY;
  private List NZ;
  private String OA;
  private String OB;
  private String OC;
  private String OD;
  private String OE;
  private String OF;
  private String Oa;
  private String Ob;
  private String Oc;
  private String Od;
  private String Oe;
  private String Of;
  private String Og;
  private String Oh;
  private ep Oi;
  private String Oj;
  private String Ok;
  private String Ol;
  private String Om;
  private ep On;
  private ep Oo;
  private ep Op;
  private List Oq;
  private String Or;
  private String Os;
  private String Ot;
  private String Ou;
  private ep Ov;
  private String Ow;
  private String Ox;
  private String Oy;
  private ep Oz;
  private String mName;

  static
  {
    HashMap localHashMap = new HashMap();
    NG = localHashMap;
    localHashMap.put("about", ar.a.a("about", 2, ep.class));
    NG.put("additionalName", ar.a.U("additionalName"));
    NG.put("address", ar.a.a("address", 4, ep.class));
    NG.put("addressCountry", ar.a.g("addressCountry", 5));
    NG.put("addressLocality", ar.a.g("addressLocality", 6));
    NG.put("addressRegion", ar.a.g("addressRegion", 7));
    NG.put("associated_media", ar.a.b("associated_media", 8, ep.class));
    NG.put("attendeeCount", ar.a.d("attendeeCount", 9));
    NG.put("attendees", ar.a.b("attendees", 10, ep.class));
    NG.put("audio", ar.a.a("audio", 11, ep.class));
    NG.put("author", ar.a.b("author", 12, ep.class));
    NG.put("bestRating", ar.a.g("bestRating", 13));
    NG.put("birthDate", ar.a.g("birthDate", 14));
    NG.put("byArtist", ar.a.a("byArtist", 15, ep.class));
    NG.put("caption", ar.a.g("caption", 16));
    NG.put("contentSize", ar.a.g("contentSize", 17));
    NG.put("contentUrl", ar.a.g("contentUrl", 18));
    NG.put("contributor", ar.a.b("contributor", 19, ep.class));
    NG.put("dateCreated", ar.a.g("dateCreated", 20));
    NG.put("dateModified", ar.a.g("dateModified", 21));
    NG.put("datePublished", ar.a.g("datePublished", 22));
    NG.put("description", ar.a.g("description", 23));
    NG.put("duration", ar.a.g("duration", 24));
    NG.put("embedUrl", ar.a.g("embedUrl", 25));
    NG.put("endDate", ar.a.g("endDate", 26));
    NG.put("familyName", ar.a.g("familyName", 27));
    NG.put("gender", ar.a.g("gender", 28));
    NG.put("geo", ar.a.a("geo", 29, ep.class));
    NG.put("givenName", ar.a.g("givenName", 30));
    NG.put("height", ar.a.g("height", 31));
    NG.put("id", ar.a.g("id", 32));
    NG.put("image", ar.a.g("image", 33));
    NG.put("inAlbum", ar.a.a("inAlbum", 34, ep.class));
    NG.put("latitude", ar.a.e("latitude", 36));
    NG.put("location", ar.a.a("location", 37, ep.class));
    NG.put("longitude", ar.a.e("longitude", 38));
    NG.put("name", ar.a.g("name", 39));
    NG.put("partOfTVSeries", ar.a.a("partOfTVSeries", 40, ep.class));
    NG.put("performers", ar.a.b("performers", 41, ep.class));
    NG.put("playerType", ar.a.g("playerType", 42));
    NG.put("postOfficeBoxNumber", ar.a.g("postOfficeBoxNumber", 43));
    NG.put("postalCode", ar.a.g("postalCode", 44));
    NG.put("ratingValue", ar.a.g("ratingValue", 45));
    NG.put("reviewRating", ar.a.a("reviewRating", 46, ep.class));
    NG.put("startDate", ar.a.g("startDate", 47));
    NG.put("streetAddress", ar.a.g("streetAddress", 48));
    NG.put("text", ar.a.g("text", 49));
    NG.put("thumbnail", ar.a.a("thumbnail", 50, ep.class));
    NG.put("thumbnailUrl", ar.a.g("thumbnailUrl", 51));
    NG.put("tickerSymbol", ar.a.g("tickerSymbol", 52));
    NG.put("type", ar.a.g("type", 53));
    NG.put("url", ar.a.g("url", 54));
    NG.put("width", ar.a.g("width", 55));
    NG.put("worstRating", ar.a.g("worstRating", 56));
  }

  public ep()
  {
    this.KH = 1;
    this.NH = new HashSet();
  }

  ep(Set paramSet, int paramInt1, ep paramep1, List paramList1, ep paramep2, String paramString1, String paramString2, String paramString3, List paramList2, int paramInt2, List paramList3, ep paramep3, List paramList4, String paramString4, String paramString5, ep paramep4, String paramString6, String paramString7, String paramString8, List paramList5, String paramString9, String paramString10, String paramString11, String paramString12, String paramString13, String paramString14, String paramString15, String paramString16, String paramString17, ep paramep5, String paramString18, String paramString19, String paramString20, String paramString21, ep paramep6, double paramDouble1, ep paramep7, double paramDouble2, String paramString22, ep paramep8, List paramList6, String paramString23, String paramString24, String paramString25, String paramString26, ep paramep9, String paramString27, String paramString28, String paramString29, ep paramep10, String paramString30, String paramString31, String paramString32, String paramString33, String paramString34, String paramString35)
  {
    this.NH = paramSet;
    this.KH = paramInt1;
    this.NI = paramep1;
    this.NJ = paramList1;
    this.NK = paramep2;
    this.NL = paramString1;
    this.NM = paramString2;
    this.NN = paramString3;
    this.NO = paramList2;
    this.NP = paramInt2;
    this.NQ = paramList3;
    this.NR = paramep3;
    this.NS = paramList4;
    this.NT = paramString4;
    this.NU = paramString5;
    this.NV = paramep4;
    this.NW = paramString6;
    this.NX = paramString7;
    this.NY = paramString8;
    this.NZ = paramList5;
    this.Oa = paramString9;
    this.Ob = paramString10;
    this.Oc = paramString11;
    this.KM = paramString12;
    this.Od = paramString13;
    this.Oe = paramString14;
    this.Of = paramString15;
    this.Og = paramString16;
    this.Oh = paramString17;
    this.Oi = paramep5;
    this.Oj = paramString18;
    this.Ok = paramString19;
    this.Ol = paramString20;
    this.Om = paramString21;
    this.On = paramep6;
    this.MK = paramDouble1;
    this.Oo = paramep7;
    this.ML = paramDouble2;
    this.mName = paramString22;
    this.Op = paramep8;
    this.Oq = paramList6;
    this.Or = paramString23;
    this.Os = paramString24;
    this.Ot = paramString25;
    this.Ou = paramString26;
    this.Ov = paramep9;
    this.Ow = paramString27;
    this.Ox = paramString28;
    this.Oy = paramString29;
    this.Oz = paramep10;
    this.OA = paramString30;
    this.OB = paramString31;
    this.OC = paramString32;
    this.OD = paramString33;
    this.OE = paramString34;
    this.OF = paramString35;
  }

  protected final boolean a(ar.a parama)
  {
    return this.NH.contains(Integer.valueOf(parama.ip()));
  }

  protected final Object b(ar.a parama)
  {
    switch (parama.ip())
    {
    case 35:
    default:
      throw new IllegalStateException("Unknown safe parcelable id=" + parama.ip());
    case 2:
      return this.NI;
    case 3:
      return this.NJ;
    case 4:
      return this.NK;
    case 5:
      return this.NL;
    case 6:
      return this.NM;
    case 7:
      return this.NN;
    case 8:
      return this.NO;
    case 9:
      return Integer.valueOf(this.NP);
    case 10:
      return this.NQ;
    case 11:
      return this.NR;
    case 12:
      return this.NS;
    case 13:
      return this.NT;
    case 14:
      return this.NU;
    case 15:
      return this.NV;
    case 16:
      return this.NW;
    case 17:
      return this.NX;
    case 18:
      return this.NY;
    case 19:
      return this.NZ;
    case 20:
      return this.Oa;
    case 21:
      return this.Ob;
    case 22:
      return this.Oc;
    case 23:
      return this.KM;
    case 24:
      return this.Od;
    case 25:
      return this.Oe;
    case 26:
      return this.Of;
    case 27:
      return this.Og;
    case 28:
      return this.Oh;
    case 29:
      return this.Oi;
    case 30:
      return this.Oj;
    case 31:
      return this.Ok;
    case 32:
      return this.Ol;
    case 33:
      return this.Om;
    case 34:
      return this.On;
    case 36:
      return Double.valueOf(this.MK);
    case 37:
      return this.Oo;
    case 38:
      return Double.valueOf(this.ML);
    case 39:
      return this.mName;
    case 40:
      return this.Op;
    case 41:
      return this.Oq;
    case 42:
      return this.Or;
    case 43:
      return this.Os;
    case 44:
      return this.Ot;
    case 45:
      return this.Ou;
    case 46:
      return this.Ov;
    case 47:
      return this.Ow;
    case 48:
      return this.Ox;
    case 49:
      return this.Oy;
    case 50:
      return this.Oz;
    case 51:
      return this.OA;
    case 52:
      return this.OB;
    case 53:
      return this.OC;
    case 54:
      return this.OD;
    case 55:
      return this.OE;
    case 56:
    }
    return this.OF;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ep))
      return false;
    if (this == paramObject)
      return true;
    ep localep = (ep)paramObject;
    Iterator localIterator = NG.values().iterator();
    while (localIterator.hasNext())
    {
      ar.a locala = (ar.a)localIterator.next();
      if (a(locala))
      {
        if (localep.a(locala))
        {
          if (!b(locala).equals(localep.b(locala)))
            return false;
        }
        else
          return false;
      }
      else if (localep.a(locala))
        return false;
    }
    return true;
  }

  public final String getDescription()
  {
    return this.KM;
  }

  public final String getId()
  {
    return this.Ol;
  }

  public final double getLatitude()
  {
    return this.MK;
  }

  public final double getLongitude()
  {
    return this.ML;
  }

  public final String getName()
  {
    return this.mName;
  }

  public final String getPostalCode()
  {
    return this.Ot;
  }

  public final String getText()
  {
    return this.Oy;
  }

  public final String getType()
  {
    return this.OC;
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

  public final String jA()
  {
    return this.Oc;
  }

  public final String jB()
  {
    return this.Od;
  }

  public final String jC()
  {
    return this.Oe;
  }

  public final String jD()
  {
    return this.Of;
  }

  public final String jE()
  {
    return this.Og;
  }

  public final String jF()
  {
    return this.Oh;
  }

  final ep jG()
  {
    return this.Oi;
  }

  public final String jH()
  {
    return this.Oj;
  }

  public final String jI()
  {
    return this.Ok;
  }

  public final String jJ()
  {
    return this.Om;
  }

  final ep jK()
  {
    return this.On;
  }

  final ep jL()
  {
    return this.Oo;
  }

  final ep jM()
  {
    return this.Op;
  }

  final List jN()
  {
    return this.Oq;
  }

  public final String jO()
  {
    return this.Or;
  }

  public final String jP()
  {
    return this.Os;
  }

  public final String jQ()
  {
    return this.Ou;
  }

  final ep jR()
  {
    return this.Ov;
  }

  public final String jS()
  {
    return this.Ow;
  }

  public final String jT()
  {
    return this.Ox;
  }

  final ep jU()
  {
    return this.Oz;
  }

  public final String jV()
  {
    return this.OA;
  }

  public final String jW()
  {
    return this.OB;
  }

  public final String jX()
  {
    return this.OE;
  }

  public final String jY()
  {
    return this.OF;
  }

  final Set jf()
  {
    return this.NH;
  }

  final ep jg()
  {
    return this.NI;
  }

  public final List jh()
  {
    return this.NJ;
  }

  final ep ji()
  {
    return this.NK;
  }

  public final String jj()
  {
    return this.NL;
  }

  public final String jk()
  {
    return this.NM;
  }

  public final String jl()
  {
    return this.NN;
  }

  final List jm()
  {
    return this.NO;
  }

  public final int jn()
  {
    return this.NP;
  }

  final List jo()
  {
    return this.NQ;
  }

  final ep jp()
  {
    return this.NR;
  }

  final List jq()
  {
    return this.NS;
  }

  public final String jr()
  {
    return this.NT;
  }

  public final String js()
  {
    return this.NU;
  }

  final ep jt()
  {
    return this.NV;
  }

  public final String ju()
  {
    return this.NW;
  }

  public final String jv()
  {
    return this.NX;
  }

  public final String jw()
  {
    return this.NY;
  }

  final List jx()
  {
    return this.NZ;
  }

  public final String jy()
  {
    return this.Oa;
  }

  public final String jz()
  {
    return this.Ob;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    bu.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ep
 * JD-Core Version:    0.6.2
 */