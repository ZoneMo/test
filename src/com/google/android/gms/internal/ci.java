package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class ci
  implements Parcelable.Creator
{
  static void a(eu.h paramh, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    Set localSet = paramh.jf();
    if (localSet.contains(Integer.valueOf(1)))
      q.c(paramParcel, 1, paramh.hH());
    if (localSet.contains(Integer.valueOf(2)))
      q.a(paramParcel, 2, paramh.kC());
    if (localSet.contains(Integer.valueOf(3)))
      q.a(paramParcel, 3, paramh.getValue(), true);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ci
 * JD-Core Version:    0.6.2
 */