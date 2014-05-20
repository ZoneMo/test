package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class aa
  implements Parcelable.Creator
{
  static void a(au paramau, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramau.hH());
    q.a(paramParcel, 2, paramau.iw(), false);
    q.a(paramParcel, 3, paramau.ix(), false);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.aa
 * JD-Core Version:    0.6.2
 */