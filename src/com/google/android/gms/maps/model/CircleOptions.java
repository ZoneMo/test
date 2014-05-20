package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.q;

public final class CircleOptions
  implements SafeParcelable
{
  public static final d RY = new d();
  private final int KH;
  private LatLng RZ = null;
  private double Sa = 0.0D;
  private float Sb = 10.0F;
  private int Sc = -16777216;
  private int Sd = 0;
  private float Se = 0.0F;
  private boolean Sf = true;

  public CircleOptions()
  {
    this.KH = 1;
  }

  CircleOptions(int paramInt1, LatLng paramLatLng, double paramDouble, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean)
  {
    this.KH = paramInt1;
    this.RZ = paramLatLng;
    this.Sa = paramDouble;
    this.Sb = paramFloat1;
    this.Sc = paramInt2;
    this.Sd = paramInt3;
    this.Se = paramFloat2;
    this.Sf = paramBoolean;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final float getStrokeWidth()
  {
    return this.Sb;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final boolean isVisible()
  {
    return this.Sf;
  }

  public final LatLng lv()
  {
    return this.RZ;
  }

  public final double lw()
  {
    return this.Sa;
  }

  public final int lx()
  {
    return this.Sc;
  }

  public final int ly()
  {
    return this.Sd;
  }

  public final float lz()
  {
    return this.Se;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ay.iN())
    {
      int i = q.g(paramParcel);
      q.c(paramParcel, 1, this.KH);
      q.a(paramParcel, 2, this.RZ, paramInt, false);
      q.a(paramParcel, 3, this.Sa);
      q.a(paramParcel, 4, this.Sb);
      q.c(paramParcel, 5, this.Sc);
      q.c(paramParcel, 6, this.Sd);
      q.a(paramParcel, 7, this.Se);
      q.a(paramParcel, 8, this.Sf);
      q.v(paramParcel, i);
      return;
    }
    d.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.CircleOptions
 * JD-Core Version:    0.6.2
 */