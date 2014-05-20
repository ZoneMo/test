package com.google.android.gms.internal;

import android.database.CursorWindow;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class cr
  implements Parcelable.Creator
{
  static void a(l paraml, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    q.a(paramParcel, 1, paraml.Qg);
    q.c(paramParcel, 1000, paraml.KH);
    q.a(paramParcel, paraml.Qi, paramInt);
    q.c(paramParcel, 3, paraml.p);
    q.a(paramParcel, 4, paraml.Qj);
    q.v(paramParcel, i);
  }

  public static l l(Parcel paramParcel)
  {
    l locall = new l();
    int i = o.f(paramParcel);
    while (paramParcel.dataPosition() < i)
    {
      int j = paramParcel.readInt();
      switch (0xFFFF & j)
      {
      default:
        o.b(paramParcel, j);
        break;
      case 1:
        locall.Qg = o.q(paramParcel, j);
        break;
      case 1000:
        locall.KH = o.f(paramParcel, j);
        break;
      case 2:
        Parcelable.Creator localCreator = CursorWindow.CREATOR;
        int k = o.a(paramParcel, j);
        int m = paramParcel.dataPosition();
        Object[] arrayOfObject;
        if (k == 0)
          arrayOfObject = null;
        while (true)
        {
          locall.Qi = ((CursorWindow[])arrayOfObject);
          break;
          arrayOfObject = paramParcel.createTypedArray(localCreator);
          paramParcel.setDataPosition(m + k);
        }
      case 3:
        locall.p = o.f(paramParcel, j);
        break;
      case 4:
        locall.Qj = o.n(paramParcel, j);
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new p("Overread allowed size end=" + i, paramParcel);
    locall.kY();
    return locall;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cr
 * JD-Core Version:    0.6.2
 */