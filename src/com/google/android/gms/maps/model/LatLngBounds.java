package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.q;
import java.util.Arrays;

public final class LatLngBounds
  implements SafeParcelable
{
  public static final f Ss = new f();
  private final int KH;
  public final LatLng St;
  public final LatLng Su;

  LatLngBounds(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2)
  {
    i.c(paramLatLng1, "null southwest");
    i.c(paramLatLng2, "null northeast");
    if (paramLatLng2.Sq >= paramLatLng1.Sq);
    for (int i = 1; ; i = 0)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Double.valueOf(paramLatLng1.Sq);
      arrayOfObject[1] = Double.valueOf(paramLatLng2.Sq);
      if (i != 0)
        break;
      throw new IllegalArgumentException(String.format("southern latitude exceeds northern latitude (%s > %s)", arrayOfObject));
    }
    this.KH = paramInt;
    this.St = paramLatLng1;
    this.Su = paramLatLng2;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    LatLngBounds localLatLngBounds;
    do
    {
      return true;
      if (!(paramObject instanceof LatLngBounds))
        return false;
      localLatLngBounds = (LatLngBounds)paramObject;
    }
    while ((this.St.equals(localLatLngBounds.St)) && (this.Su.equals(localLatLngBounds.Su)));
    return false;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.St;
    arrayOfObject[1] = this.Su;
    return Arrays.hashCode(arrayOfObject);
  }

  public final String toString()
  {
    return g.L(this).a("southwest", this.St).a("northeast", this.Su).toString();
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ay.iN())
    {
      int i = q.g(paramParcel);
      q.c(paramParcel, 1, this.KH);
      q.a(paramParcel, 2, this.St, paramInt, false);
      q.a(paramParcel, 3, this.Su, paramInt, false);
      q.v(paramParcel, i);
      return;
    }
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.LatLngBounds
 * JD-Core Version:    0.6.2
 */