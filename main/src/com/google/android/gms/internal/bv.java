package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class bv
  implements Parcelable.Creator
{
  static void a(er paramer, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    Set localSet = paramer.jf();
    if (localSet.contains(Integer.valueOf(1)))
      q.c(paramParcel, 1, paramer.hH());
    if (localSet.contains(Integer.valueOf(2)))
      q.a(paramParcel, 2, paramer.getId(), true);
    if (localSet.contains(Integer.valueOf(4)))
      q.a(paramParcel, 4, paramer.jZ(), paramInt, true);
    if (localSet.contains(Integer.valueOf(5)))
      q.a(paramParcel, 5, paramer.jS(), true);
    if (localSet.contains(Integer.valueOf(6)))
      q.a(paramParcel, 6, paramer.ka(), paramInt, true);
    if (localSet.contains(Integer.valueOf(7)))
      q.a(paramParcel, 7, paramer.getType(), true);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bv
 * JD-Core Version:    0.6.2
 */