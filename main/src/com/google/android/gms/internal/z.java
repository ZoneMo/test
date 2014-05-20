package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class z
  implements Parcelable.Creator
{
  static void a(au.b paramb, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramb.versionCode);
    q.a(paramParcel, 2, paramb.Mr, false);
    q.a(paramParcel, 3, paramb.Ms, paramInt, false);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.z
 * JD-Core Version:    0.6.2
 */