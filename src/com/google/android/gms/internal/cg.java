package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class cg
  implements Parcelable.Creator
{
  static void a(eu.g paramg, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    Set localSet = paramg.jf();
    if (localSet.contains(Integer.valueOf(1)))
      q.c(paramParcel, 1, paramg.hH());
    if (localSet.contains(Integer.valueOf(2)))
      q.a(paramParcel, 2, paramg.kH(), true);
    if (localSet.contains(Integer.valueOf(3)))
      q.a(paramParcel, 3, paramg.getDescription(), true);
    if (localSet.contains(Integer.valueOf(4)))
      q.a(paramParcel, 4, paramg.jD(), true);
    if (localSet.contains(Integer.valueOf(5)))
      q.a(paramParcel, 5, paramg.getLocation(), true);
    if (localSet.contains(Integer.valueOf(6)))
      q.a(paramParcel, 6, paramg.getName(), true);
    if (localSet.contains(Integer.valueOf(7)))
      q.a(paramParcel, 7, paramg.kC());
    if (localSet.contains(Integer.valueOf(8)))
      q.a(paramParcel, 8, paramg.jS(), true);
    if (localSet.contains(Integer.valueOf(9)))
      q.a(paramParcel, 9, paramg.getTitle(), true);
    if (localSet.contains(Integer.valueOf(10)))
      q.c(paramParcel, 10, paramg.getType());
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cg
 * JD-Core Version:    0.6.2
 */