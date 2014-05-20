package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class cb
  implements Parcelable.Creator
{
  static void a(eu.c paramc, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    Set localSet = paramc.jf();
    if (localSet.contains(Integer.valueOf(1)))
      q.c(paramParcel, 1, paramc.hH());
    if (localSet.contains(Integer.valueOf(2)))
      q.a(paramParcel, 2, paramc.kC());
    if (localSet.contains(Integer.valueOf(3)))
      q.c(paramParcel, 3, paramc.getType());
    if (localSet.contains(Integer.valueOf(4)))
      q.a(paramParcel, 4, paramc.getValue(), true);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cb
 * JD-Core Version:    0.6.2
 */