package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

public class ed
  implements SafeParcelable
{
  public static final bc MQ = new bc();
  private final int KH;
  private final String MR;
  private final String[] MS;
  private final String[] MT;
  private final String[] MU;
  private final String MV;
  private final String MW;
  private final String MX;

  public ed(int paramInt, String paramString1, String[] paramArrayOfString1, String[] paramArrayOfString2, String[] paramArrayOfString3, String paramString2, String paramString3, String paramString4)
  {
    this.KH = paramInt;
    this.MR = paramString1;
    this.MS = paramArrayOfString1;
    this.MT = paramArrayOfString2;
    this.MU = paramArrayOfString3;
    this.MV = paramString2;
    this.MW = paramString3;
    this.MX = paramString4;
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ed));
    ed localed;
    do
    {
      return false;
      localed = (ed)paramObject;
    }
    while ((this.KH != localed.KH) || (!g.b(this.MR, localed.MR)) || (!g.b(this.MS, localed.MS)) || (!g.b(this.MT, localed.MT)) || (!g.b(this.MU, localed.MU)) || (!g.b(this.MV, localed.MV)) || (!g.b(this.MW, localed.MW)) || (!g.b(this.MX, localed.MX)));
    return true;
  }

  public final String getAccountName()
  {
    return this.MR;
  }

  public final int hH()
  {
    return this.KH;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[8];
    arrayOfObject[0] = Integer.valueOf(this.KH);
    arrayOfObject[1] = this.MR;
    arrayOfObject[2] = this.MS;
    arrayOfObject[3] = this.MT;
    arrayOfObject[4] = this.MU;
    arrayOfObject[5] = this.MV;
    arrayOfObject[6] = this.MW;
    arrayOfObject[7] = this.MX;
    return Arrays.hashCode(arrayOfObject);
  }

  public final String[] iO()
  {
    return this.MS;
  }

  public final String[] iP()
  {
    return this.MT;
  }

  public final String[] iQ()
  {
    return this.MU;
  }

  public final String iR()
  {
    return this.MV;
  }

  public final String iS()
  {
    return this.MW;
  }

  public final String iT()
  {
    return this.MX;
  }

  public String toString()
  {
    return g.L(this).a("versionCode", Integer.valueOf(this.KH)).a("accountName", this.MR).a("requestedScopes", this.MS).a("visibleActivities", this.MT).a("requiredFeatures", this.MU).a("packageNameForAuth", this.MV).a("callingPackageName", this.MW).a("applicationName", this.MX).toString();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    bc.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ed
 * JD-Core Version:    0.6.2
 */