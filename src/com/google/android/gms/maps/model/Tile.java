package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.q;

public final class Tile
  implements SafeParcelable
{
  public static final k SF = new k();
  private final int KH;
  public final byte[] data;
  public final int height;
  public final int width;

  public Tile()
  {
    this(1, -1, -1, null);
  }

  Tile(int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte)
  {
    this.KH = paramInt1;
    this.width = paramInt2;
    this.height = paramInt3;
    this.data = paramArrayOfByte;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ay.iN())
    {
      int i = q.g(paramParcel);
      q.c(paramParcel, 1, this.KH);
      q.c(paramParcel, 2, this.width);
      q.c(paramParcel, 3, this.height);
      q.a(paramParcel, this.data);
      q.v(paramParcel, i);
      return;
    }
    k.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.Tile
 * JD-Core Version:    0.6.2
 */