package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class by
  implements Parcelable.Creator
{
  static void a(eu.b paramb, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    Set localSet = paramb.jf();
    if (localSet.contains(Integer.valueOf(1)))
      q.c(paramParcel, 1, paramb.hH());
    if (localSet.contains(Integer.valueOf(2)))
      q.a(paramParcel, 2, paramb.kx(), paramInt, true);
    if (localSet.contains(Integer.valueOf(3)))
      q.a(paramParcel, 3, paramb.ky(), paramInt, true);
    if (localSet.contains(Integer.valueOf(4)))
      q.c(paramParcel, 4, paramb.kz());
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.by
 * JD-Core Version:    0.6.2
 */