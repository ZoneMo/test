package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.o;
import com.google.android.gms.internal.p;
import com.google.android.gms.internal.q;

public final class k
  implements Parcelable.Creator
{
  static void a(Tile paramTile, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramTile.hH());
    q.c(paramParcel, 2, paramTile.width);
    q.c(paramParcel, 3, paramTile.height);
    q.a(paramParcel, paramTile.data);
    q.v(paramParcel, i);
  }

  public static Tile m(Parcel paramParcel)
  {
    int i = 0;
    int j = o.f(paramParcel);
    byte[] arrayOfByte = null;
    int k = 0;
    int m = 0;
    while (paramParcel.dataPosition() < j)
    {
      int n = paramParcel.readInt();
      switch (0xFFFF & n)
      {
      default:
        o.b(paramParcel, n);
        break;
      case 1:
        m = o.f(paramParcel, n);
        break;
      case 2:
        k = o.f(paramParcel, n);
        break;
      case 3:
        i = o.f(paramParcel, n);
        break;
      case 4:
        arrayOfByte = o.o(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != j)
      throw new p("Overread allowed size end=" + j, paramParcel);
    return new Tile(m, k, i, arrayOfByte);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.k
 * JD-Core Version:    0.6.2
 */