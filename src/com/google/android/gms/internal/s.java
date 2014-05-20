package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class s
  implements Parcelable.Creator
{
  static void a(ak paramak, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramak.getType());
    q.c(paramParcel, 1000, paramak.hH());
    q.c(paramParcel, 2, paramak.ia());
    q.a(paramParcel, 3, paramak.ib(), false);
    q.a(paramParcel, 4, paramak.ic(), false);
    q.a(paramParcel, 5, paramak.getDisplayName(), false);
    q.a(paramParcel, 6, paramak.id(), false);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.s
 * JD-Core Version:    0.6.2
 */