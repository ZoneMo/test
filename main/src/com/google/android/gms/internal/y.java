package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class y
  implements Parcelable.Creator
{
  static void a(ar.a parama, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, parama.hH());
    q.c(paramParcel, 2, parama.ik());
    q.a(paramParcel, 3, parama.il());
    q.c(paramParcel, 4, parama.im());
    q.a(paramParcel, 5, parama.in());
    q.a(paramParcel, 6, parama.io(), false);
    q.c(paramParcel, 7, parama.ip());
    q.a(paramParcel, 8, parama.ir(), false);
    q.a(paramParcel, 9, parama.it(), paramInt, false);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.y
 * JD-Core Version:    0.6.2
 */