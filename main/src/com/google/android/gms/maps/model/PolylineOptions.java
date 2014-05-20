package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.q;
import java.util.ArrayList;
import java.util.List;

public final class PolylineOptions
  implements SafeParcelable
{
  public static final j SE = new j();
  private final int KH;
  private int Kp = -16777216;
  private final List SB;
  private boolean SD = false;
  private float Se = 0.0F;
  private boolean Sf = true;
  private float Sj = 10.0F;

  public PolylineOptions()
  {
    this.KH = 1;
    this.SB = new ArrayList();
  }

  PolylineOptions(int paramInt1, List paramList, float paramFloat1, int paramInt2, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.KH = paramInt1;
    this.SB = paramList;
    this.Sj = paramFloat1;
    this.Kp = paramInt2;
    this.Se = paramFloat2;
    this.Sf = paramBoolean1;
    this.SD = paramBoolean2;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final int getColor()
  {
    return this.Kp;
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

  public final List lK()
  {
    return this.SB;
  }

  public final boolean lL()
  {
    return this.SD;
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
      q.a(paramParcel, 2, this.SB, false);
      q.a(paramParcel, 3, this.Sj);
      q.c(paramParcel, 4, this.Kp);
      q.a(paramParcel, 5, this.Se);
      q.a(paramParcel, 6, this.Sf);
      q.a(paramParcel, 7, this.SD);
      q.v(paramParcel, i);
      return;
    }
    j.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.PolylineOptions
 * JD-Core Version:    0.6.2
 */