package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.q;

public final class LatLng
  implements SafeParcelable
{
  public static final g Sp = new g();
  private final int KH;
  public final double Sq;
  public final double Sr;

  public LatLng(double paramDouble1, double paramDouble2)
  {
    this(1, paramDouble1, paramDouble2);
  }

  LatLng(int paramInt, double paramDouble1, double paramDouble2)
  {
    this.KH = paramInt;
    if ((-180.0D <= paramDouble2) && (paramDouble2 < 180.0D));
    for (this.Sr = paramDouble2; ; this.Sr = ((360.0D + (paramDouble2 - 180.0D) % 360.0D) % 360.0D - 180.0D))
    {
      this.Sq = Math.max(-90.0D, Math.min(90.0D, paramDouble1));
      return;
    }
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    LatLng localLatLng;
    do
    {
      return true;
      if (!(paramObject instanceof LatLng))
        return false;
      localLatLng = (LatLng)paramObject;
    }
    while ((Double.doubleToLongBits(this.Sq) == Double.doubleToLongBits(localLatLng.Sq)) && (Double.doubleToLongBits(this.Sr) == Double.doubleToLongBits(localLatLng.Sr)));
    return false;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final int hashCode()
  {
    long l1 = Double.doubleToLongBits(this.Sq);
    int i = 31 + (int)(l1 ^ l1 >>> 32);
    long l2 = Double.doubleToLongBits(this.Sr);
    return i * 31 + (int)(l2 ^ l2 >>> 32);
  }

  public final String toString()
  {
    return "lat/lng: (" + this.Sq + "," + this.Sr + ")";
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ay.iN())
    {
      int i = q.g(paramParcel);
      q.c(paramParcel, 1, this.KH);
      q.a(paramParcel, 2, this.Sq);
      q.a(paramParcel, 3, this.Sr);
      q.v(paramParcel, i);
      return;
    }
    g.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.LatLng
 * JD-Core Version:    0.6.2
 */