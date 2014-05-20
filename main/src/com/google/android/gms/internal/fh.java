package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.List;

public class fh
  implements SafeParcelable
{
  public static final ck PJ = new ck();
  private final int KH;
  private final String Ol;
  private final List PK;
  private final List PL;
  private final Uri PM;
  private final String PN;
  private final String PO;
  private final String PP;
  private final Bundle PQ;
  private final Bundle PR;

  public fh(int paramInt, String paramString1, List paramList1, List paramList2, Uri paramUri, String paramString2, String paramString3, String paramString4, Bundle paramBundle1, Bundle paramBundle2)
  {
    this.KH = paramInt;
    this.Ol = paramString1;
    this.PK = paramList1;
    this.PL = paramList2;
    this.PM = paramUri;
    this.PN = paramString2;
    this.PO = paramString3;
    this.PP = paramString4;
    this.PQ = paramBundle1;
    this.PR = paramBundle2;
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof fh));
    fh localfh;
    do
    {
      return false;
      localfh = (fh)paramObject;
    }
    while ((this.KH != localfh.KH) || (!g.b(this.PK, localfh.PK)) || (!g.b(this.PL, localfh.PL)) || (!g.b(this.PM, localfh.PM)) || (!g.b(this.PN, localfh.PN)) || (!g.b(this.PO, localfh.PO)) || (!g.b(this.PP, localfh.PP)));
    return true;
  }

  public final String getId()
  {
    return this.Ol;
  }

  public final int hH()
  {
    return this.KH;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = Integer.valueOf(this.KH);
    arrayOfObject[1] = this.PK;
    arrayOfObject[2] = this.PL;
    arrayOfObject[3] = this.PM;
    arrayOfObject[4] = this.PN;
    arrayOfObject[5] = this.PO;
    arrayOfObject[6] = this.PP;
    return Arrays.hashCode(arrayOfObject);
  }

  public final List kK()
  {
    return this.PK;
  }

  public final List kL()
  {
    return this.PL;
  }

  public final Uri kM()
  {
    return this.PM;
  }

  public final String kN()
  {
    return this.PN;
  }

  public final String kO()
  {
    return this.PO;
  }

  public final String kP()
  {
    return this.PP;
  }

  public final Bundle kQ()
  {
    return this.PQ;
  }

  public final Bundle kR()
  {
    return this.PR;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ck.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fh
 * JD-Core Version:    0.6.2
 */