package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.az;
import com.google.android.gms.internal.ba;
import com.google.android.gms.internal.q;

public final class TileOverlayOptions
  implements SafeParcelable
{
  public static final m SG = new m();
  private final int KH;
  private az SH;
  private n SI;
  private float Se;
  private boolean Sf = true;

  public TileOverlayOptions()
  {
    this.KH = 1;
  }

  TileOverlayOptions(int paramInt, IBinder paramIBinder, boolean paramBoolean, float paramFloat)
  {
    this.KH = paramInt;
    this.SH = ba.e(paramIBinder);
    if (this.SH == null);
    for (l locall = null; ; locall = new l(this))
    {
      this.SI = locall;
      this.Sf = paramBoolean;
      this.Se = paramFloat;
      return;
    }
  }

  public final int describeContents()
  {
    return 0;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final boolean isVisible()
  {
    return this.Sf;
  }

  public final IBinder lM()
  {
    return this.SH.asBinder();
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
      q.a(paramParcel, 2, lM());
      q.a(paramParcel, 3, this.Sf);
      q.a(paramParcel, 4, this.Se);
      q.v(paramParcel, i);
      return;
    }
    m.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.TileOverlayOptions
 * JD-Core Version:    0.6.2
 */