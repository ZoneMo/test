package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class ab
  implements Parcelable.Creator
{
  static void a(au.a parama, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, parama.versionCode);
    q.a(paramParcel, 2, parama.className, false);
    q.a(paramParcel, 3, parama.Mp, false);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ab
 * JD-Core Version:    0.6.2
 */