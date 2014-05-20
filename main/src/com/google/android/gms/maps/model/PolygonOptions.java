package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.q;
import java.util.ArrayList;
import java.util.List;

public final class PolygonOptions
  implements SafeParcelable
{
  public static final i SA = new i();
  private final int KH;
  private final List SB;
  private final List SC;
  private boolean SD = false;
  private float Sb = 10.0F;
  private int Sc = -16777216;
  private int Sd = 0;
  private float Se = 0.0F;
  private boolean Sf = true;

  public PolygonOptions()
  {
    this.KH = 1;
    this.SB = new ArrayList();
    this.SC = new ArrayList();
  }

  PolygonOptions(int paramInt1, List paramList1, List paramList2, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.KH = paramInt1;
    this.SB = paramList1;
    this.SC = paramList2;
    this.Sb = paramFloat1;
    this.Sc = paramInt2;
    this.Sd = paramInt3;
    this.Se = paramFloat2;
    this.Sf = paramBoolean1;
    this.SD = paramBoolean2;
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

  public final List lJ()
  {
    return this.SC;
  }

  public final List lK()
  {
    return this.SB;
  }

  public final boolean lL()
  {
    return this.SD;
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
      q.a(paramParcel, 2, this.SB, false);
      q.b(paramParcel, this.SC);
      q.a(paramParcel, 4, this.Sb);
      q.c(paramParcel, 5, this.Sc);
      q.c(paramParcel, 6, this.Sd);
      q.a(paramParcel, 7, this.Se);
      q.a(paramParcel, 8, this.Sf);
      q.a(paramParcel, 9, this.SD);
      q.v(paramParcel, i);
      return;
    }
    i.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.PolygonOptions
 * JD-Core Version:    0.6.2
 */