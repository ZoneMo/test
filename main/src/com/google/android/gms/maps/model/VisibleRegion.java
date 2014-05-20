package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.q;
import java.util.Arrays;

public final class VisibleRegion
  implements SafeParcelable
{
  public static final o SM = new o();
  private final int KH;
  public final LatLng SN;
  public final LatLng SO;
  public final LatLng SP;
  public final LatLng SQ;
  public final LatLngBounds SR;

  VisibleRegion(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2, LatLng paramLatLng3, LatLng paramLatLng4, LatLngBounds paramLatLngBounds)
  {
    this.KH = paramInt;
    this.SN = paramLatLng1;
    this.SO = paramLatLng2;
    this.SP = paramLatLng3;
    this.SQ = paramLatLng4;
    this.SR = paramLatLngBounds;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    VisibleRegion localVisibleRegion;
    do
    {
      return true;
      if (!(paramObject instanceof VisibleRegion))
        return false;
      localVisibleRegion = (VisibleRegion)paramObject;
    }
    while ((this.SN.equals(localVisibleRegion.SN)) && (this.SO.equals(localVisibleRegion.SO)) && (this.SP.equals(localVisibleRegion.SP)) && (this.SQ.equals(localVisibleRegion.SQ)) && (this.SR.equals(localVisibleRegion.SR)));
    return false;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = this.SN;
    arrayOfObject[1] = this.SO;
    arrayOfObject[2] = this.SP;
    arrayOfObject[3] = this.SQ;
    arrayOfObject[4] = this.SR;
    return Arrays.hashCode(arrayOfObject);
  }

  public final String toString()
  {
    return g.L(this).a("nearLeft", this.SN).a("nearRight", this.SO).a("farLeft", this.SP).a("farRight", this.SQ).a("latLngBounds", this.SR).toString();
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ay.iN())
    {
      int i = q.g(paramParcel);
      q.c(paramParcel, 1, this.KH);
      q.a(paramParcel, 2, this.SN, paramInt, false);
      q.a(paramParcel, 3, this.SO, paramInt, false);
      q.a(paramParcel, 4, this.SP, paramInt, false);
      q.a(paramParcel, 5, this.SQ, paramInt, false);
      q.a(paramParcel, 6, this.SR, paramInt, false);
      q.v(paramParcel, i);
      return;
    }
    o.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.VisibleRegion
 * JD-Core Version:    0.6.2
 */