package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class av
  implements Parcelable.Creator
{
  static void a(cn paramcn, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.a(paramParcel, 1, paramcn.iK(), false);
    q.c(paramParcel, 1000, paramcn.hH());
    q.a(paramParcel, 2, paramcn.iL());
    q.a(paramParcel, paramcn.iI());
    q.a(paramParcel, 4, paramcn.getLatitude());
    q.a(paramParcel, 5, paramcn.getLongitude());
    q.a(paramParcel, 6, paramcn.iJ());
    q.c(paramParcel, 7, paramcn.iM());
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.av
 * JD-Core Version:    0.6.2
 */