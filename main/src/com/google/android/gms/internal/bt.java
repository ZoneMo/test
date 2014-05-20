package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

public final class bt
  implements Parcelable.Creator
{
  static void a(en paramen, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.a(paramParcel, 1, paramen.getDescription(), false);
    q.c(paramParcel, 1000, paramen.hH());
    q.a(paramParcel, 2, paramen.jc(), false);
    q.a(paramParcel, 3, paramen.jd(), false);
    q.a(paramParcel, 4, paramen.je());
    q.v(paramParcel, i);
  }

  public static en i(Parcel paramParcel)
  {
    boolean bool = false;
    ArrayList localArrayList1 = null;
    int i = o.f(paramParcel);
    ArrayList localArrayList2 = null;
    String str = null;
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
        str = o.l(paramParcel, k);
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
        bool = o.c(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new p("Overread allowed size end=" + i, paramParcel);
    return new en(j, str, localArrayList2, localArrayList1, bool);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bt
 * JD-Core Version:    0.6.2
 */