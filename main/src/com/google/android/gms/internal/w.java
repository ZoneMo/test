package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class w
  implements Parcelable.Creator
{
  static void a(ao.a parama, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, parama.versionCode);
    q.a(paramParcel, 2, parama.LX, false);
    q.c(paramParcel, 3, parama.LY);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.w
 * JD-Core Version:    0.6.2
 */