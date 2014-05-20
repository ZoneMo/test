package com.tencent.mapapi.map;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class GeoPoint
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new a();
  private int a = 0;
  private int b = 0;

  public GeoPoint(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }

  private GeoPoint(Parcel paramParcel)
  {
    this.a = paramParcel.readInt();
    this.b = paramParcel.readInt();
  }

  public final void bd(int paramInt)
  {
    this.b = paramInt;
  }

  public final void be(int paramInt)
  {
    this.a = paramInt;
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    GeoPoint localGeoPoint;
    do
    {
      do
        return false;
      while (paramObject.getClass() != getClass());
      localGeoPoint = (GeoPoint)paramObject;
    }
    while ((this.a != localGeoPoint.a) || (this.b != localGeoPoint.b));
    return true;
  }

  public final int getLatitudeE6()
  {
    return this.a;
  }

  public final int getLongitudeE6()
  {
    return this.b;
  }

  public int hashCode()
  {
    return 7 * this.b + 11 * this.a;
  }

  public final GeoPoint mk()
  {
    return new GeoPoint(this.a, this.b);
  }

  public String toString()
  {
    return this.a + "," + this.b;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
    paramParcel.writeInt(this.b);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.GeoPoint
 * JD-Core Version:    0.6.2
 */