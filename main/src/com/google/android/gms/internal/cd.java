package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class cd
  implements Parcelable.Creator
{
  static void a(eu.e parame, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    Set localSet = parame.jf();
    if (localSet.contains(Integer.valueOf(1)))
      q.c(paramParcel, 1, parame.hH());
    if (localSet.contains(Integer.valueOf(2)))
      q.a(paramParcel, 2, parame.jE(), true);
    if (localSet.contains(Integer.valueOf(3)))
      q.a(paramParcel, 3, parame.kD(), true);
    if (localSet.contains(Integer.valueOf(4)))
      q.a(paramParcel, 4, parame.jH(), true);
    if (localSet.contains(Integer.valueOf(5)))
      q.a(paramParcel, 5, parame.kE(), true);
    if (localSet.contains(Integer.valueOf(6)))
      q.a(paramParcel, 6, parame.kF(), true);
    if (localSet.contains(Integer.valueOf(7)))
      q.a(paramParcel, 7, parame.kG(), true);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cd
 * JD-Core Version:    0.6.2
 */