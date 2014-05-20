package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.an;
import com.google.android.gms.internal.ap;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.q;

public final class GroundOverlayOptions
  implements SafeParcelable
{
  public static final e Sg = new e();
  private final int KH;
  private float RX;
  private float Se;
  private boolean Sf = true;
  private a Sh;
  private LatLng Si;
  private float Sj;
  private float Sk;
  private LatLngBounds Sl;
  private float Sm = 0.0F;
  private float Sn = 0.5F;
  private float So = 0.5F;

  public GroundOverlayOptions()
  {
    this.KH = 1;
  }

  GroundOverlayOptions(int paramInt, IBinder paramIBinder, LatLng paramLatLng, float paramFloat1, float paramFloat2, LatLngBounds paramLatLngBounds, float paramFloat3, float paramFloat4, boolean paramBoolean, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    this.KH = paramInt;
    this.Sh = new a(ap.d(paramIBinder));
    this.Si = paramLatLng;
    this.Sj = paramFloat1;
    this.Sk = paramFloat2;
    this.Sl = paramLatLngBounds;
    this.RX = paramFloat3;
    this.Se = paramFloat4;
    this.Sf = paramBoolean;
    this.Sm = paramFloat5;
    this.Sn = paramFloat6;
    this.So = paramFloat7;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final float getBearing()
  {
    return this.RX;
  }

  public final float getHeight()
  {
    return this.Sk;
  }

  public final float getWidth()
  {
    return this.Sj;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final boolean isVisible()
  {
    return this.Sf;
  }

  public final IBinder lA()
  {
    return this.Sh.lt().asBinder();
  }

  public final LatLng lB()
  {
    return this.Si;
  }

  public final LatLngBounds lC()
  {
    return this.Sl;
  }

  public final float lD()
  {
    return this.Sm;
  }

  public final float lE()
  {
    return this.Sn;
  }

  public final float lF()
  {
    return this.So;
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
      q.a(paramParcel, 2, lA());
      q.a(paramParcel, 3, this.Si, paramInt, false);
      q.a(paramParcel, 4, this.Sj);
      q.a(paramParcel, 5, this.Sk);
      q.a(paramParcel, 6, this.Sl, paramInt, false);
      q.a(paramParcel, 7, this.RX);
      q.a(paramParcel, 8, this.Se);
      q.a(paramParcel, 9, this.Sf);
      q.a(paramParcel, 10, this.Sm);
      q.a(paramParcel, 11, this.Sn);
      q.a(paramParcel, 12, this.So);
      q.v(paramParcel, i);
      return;
    }
    e.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.GroundOverlayOptions
 * JD-Core Version:    0.6.2
 */