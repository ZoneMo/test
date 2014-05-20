package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class cj
  implements Parcelable.Creator
{
  static void a(eu.i parami, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    Set localSet = parami.jf();
    if (localSet.contains(Integer.valueOf(1)))
      q.c(paramParcel, 1, parami.hH());
    if (localSet.contains(Integer.valueOf(3)))
      q.c(paramParcel, 3, eu.i.kJ());
    if (localSet.contains(Integer.valueOf(4)))
      q.a(paramParcel, 4, parami.getValue(), true);
    if (localSet.contains(Integer.valueOf(5)))
      q.a(paramParcel, 5, parami.kI(), true);
    if (localSet.contains(Integer.valueOf(6)))
      q.c(paramParcel, 6, parami.getType());
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cj
 * JD-Core Version:    0.6.2
 */