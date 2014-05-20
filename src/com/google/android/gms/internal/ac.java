package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class ac
  implements Parcelable.Creator
{
  static void a(ax paramax, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramax.hH());
    q.a(paramParcel, paramax.iz());
    q.a(paramParcel, 3, paramax.iA(), paramInt, false);
    q.v(paramParcel, i);
  }

  public static ax h(Parcel paramParcel)
  {
    au localau = null;
    int i = o.f(paramParcel);
    int j = 0;
    Parcel localParcel = null;
    while (paramParcel.dataPosition() < i)
    {
      int k = paramParcel.readInt();
      switch (0xFFFF & k)
      {
      default:
        o.b(paramParcel, k);
        break;
      case 1:
        j = o.f(paramParcel, k);
        break;
      case 2:
        localParcel = o.r(paramParcel, k);
        break;
      case 3:
        localau = (au)o.a(paramParcel, k, au.Mk);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new p("Overread allowed size end=" + i, paramParcel);
    return new ax(j, localParcel, localau);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ac
 * JD-Core Version:    0.6.2
 */