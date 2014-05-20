package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

public final class cl
  implements Parcelable.Creator
{
  static void a(fj paramfj, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.a(paramParcel, 1, paramfj.kS());
    q.c(paramParcel, 1000, paramfj.hH());
    q.a(paramParcel, 2, paramfj.kT(), false);
    q.a(paramParcel, 3, paramfj.kU(), false);
    q.a(paramParcel, 4, paramfj.kV());
    q.a(paramParcel, 5, paramfj.kW());
    q.v(paramParcel, i);
  }

  public static fj k(Parcel paramParcel)
  {
    Bundle localBundle = null;
    boolean bool1 = false;
    int i = o.f(paramParcel);
    ArrayList localArrayList1 = null;
    ArrayList localArrayList2 = null;
    boolean bool2 = false;
    int j = 0;
    while (paramParcel.dataPosition() < i)
    {
      int k = paramParcel.readInt();
      switch (0xFFFF & k)
      {
      default:
        o.b(paramParcel, k);
        break;
      case 1:
        bool2 = o.c(paramParcel, k);
        break;
      case 1000:
        j = o.f(paramParcel, k);
        break;
      case 2:
        localArrayList2 = o.b(paramParcel, k, ak.LK);
        break;
      case 3:
        localArrayList1 = o.b(paramParcel, k, ak.LK);
        break;
      case 4:
        localBundle = o.n(paramParcel, k);
        break;
      case 5:
        bool1 = o.c(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new p("Overread allowed size end=" + i, paramParcel);
    return new fj(j, bool2, localArrayList2, localArrayList1, localBundle, bool1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cl
 * JD-Core Version:    0.6.2
 */