package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.an;
import com.google.android.gms.internal.ap;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.q;

public final class MarkerOptions
  implements SafeParcelable
{
  public static final h Sv = new h();
  private final int KH;
  private String PE;
  private boolean Sf = true;
  private float Sn = 0.5F;
  private float So = 1.0F;
  private LatLng Sw;
  private String Sx;
  private a Sy;
  private boolean Sz;

  public MarkerOptions()
  {
    this.KH = 1;
  }

  MarkerOptions(int paramInt, LatLng paramLatLng, String paramString1, String paramString2, IBinder paramIBinder, float paramFloat1, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.KH = paramInt;
    this.Sw = paramLatLng;
    this.PE = paramString1;
    this.Sx = paramString2;
    if (paramIBinder == null);
    for (a locala = null; ; locala = new a(ap.d(paramIBinder)))
    {
      this.Sy = locala;
      this.Sn = paramFloat1;
      this.So = paramFloat2;
      this.Sz = paramBoolean1;
      this.Sf = paramBoolean2;
      return;
    }
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String getSnippet()
  {
    return this.Sx;
  }

  public final String getTitle()
  {
    return this.PE;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final boolean isVisible()
  {
    return this.Sf;
  }

  public final float lE()
  {
    return this.Sn;
  }

  public final float lF()
  {
    return this.So;
  }

  public final IBinder lG()
  {
    if (this.Sy == null)
      return null;
    return this.Sy.lt().asBinder();
  }

  public final LatLng lH()
  {
    return this.Sw;
  }

  public final boolean lI()
  {
    return this.Sz;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ay.iN())
    {
      int i = q.g(paramParcel);
      q.c(paramParcel, 1, this.KH);
      q.a(paramParcel, 2, this.Sw, paramInt, false);
      q.a(paramParcel, 3, this.PE, false);
      q.a(paramParcel, 4, this.Sx, false);
      q.a(paramParcel, 5, lG());
      q.a(paramParcel, 6, this.Sn);
      q.a(paramParcel, 7, this.So);
      q.a(paramParcel, 8, this.Sz);
      q.a(paramParcel, 9, this.Sf);
      q.v(paramParcel, i);
      return;
    }
    h.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.MarkerOptions
 * JD-Core Version:    0.6.2
 */