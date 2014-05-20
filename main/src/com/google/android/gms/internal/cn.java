package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class cn
  implements SafeParcelable
{
  public static final av MO = new av();
  private final int KH;
  private final String MH;
  private final long MI;
  private final short MJ;
  private final double MK;
  private final double ML;
  private final float MM;
  private final int MN;

  public cn(int paramInt1, String paramString, int paramInt2, short paramShort, double paramDouble1, double paramDouble2, float paramFloat, long paramLong)
  {
    if ((paramString == null) || (paramString.length() > 100))
      throw new IllegalArgumentException("requestId is null or too long: " + paramString);
    if (paramFloat <= 0.0F)
      throw new IllegalArgumentException("invalid radius: " + paramFloat);
    if ((paramDouble1 > 90.0D) || (paramDouble1 < -90.0D))
      throw new IllegalArgumentException("invalid latitude: " + paramDouble1);
    if ((paramDouble2 > 180.0D) || (paramDouble2 < -180.0D))
      throw new IllegalArgumentException("invalid longitude: " + paramDouble2);
    int i = paramInt2 & 0x3;
    if (i == 0)
      throw new IllegalArgumentException("No supported transition specified: " + paramInt2);
    this.KH = paramInt1;
    this.MJ = paramShort;
    this.MH = paramString;
    this.MK = paramDouble1;
    this.ML = paramDouble2;
    this.MM = paramFloat;
    this.MI = paramLong;
    this.MN = i;
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    cn localcn;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (!(paramObject instanceof cn))
        return false;
      localcn = (cn)paramObject;
      if (this.MM != localcn.MM)
        return false;
      if (this.MK != localcn.MK)
        return false;
      if (this.ML != localcn.ML)
        return false;
    }
    while (this.MJ == localcn.MJ);
    return false;
  }

  public final double getLatitude()
  {
    return this.MK;
  }

  public final double getLongitude()
  {
    return this.ML;
  }

  public final int hH()
  {
    return this.KH;
  }

  public int hashCode()
  {
    long l1 = Double.doubleToLongBits(this.MK);
    int i = 31 + (int)(l1 ^ l1 >>> 32);
    long l2 = Double.doubleToLongBits(this.ML);
    return 31 * (31 * (31 * (i * 31 + (int)(l2 ^ l2 >>> 32)) + Float.floatToIntBits(this.MM)) + this.MJ) + this.MN;
  }

  public final short iI()
  {
    return this.MJ;
  }

  public final float iJ()
  {
    return this.MM;
  }

  public final String iK()
  {
    return this.MH;
  }

  public final long iL()
  {
    return this.MI;
  }

  public final int iM()
  {
    return this.MN;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[7];
    switch (this.MJ)
    {
    default:
    case 1:
    }
    for (String str = null; ; str = "CIRCLE")
    {
      arrayOfObject[0] = str;
      arrayOfObject[1] = this.MH;
      arrayOfObject[2] = Integer.valueOf(this.MN);
      arrayOfObject[3] = Double.valueOf(this.MK);
      arrayOfObject[4] = Double.valueOf(this.ML);
      arrayOfObject[5] = Float.valueOf(this.MM);
      arrayOfObject[6] = Long.valueOf(this.MI);
      return String.format("Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, @%d]", arrayOfObject);
    }
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    av.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cn
 * JD-Core Version:    0.6.2
 */