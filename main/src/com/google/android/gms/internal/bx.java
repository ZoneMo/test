package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class bx
  implements Parcelable.Creator
{
  static void a(eu.a parama, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    Set localSet = parama.jf();
    if (localSet.contains(Integer.valueOf(1)))
      q.c(paramParcel, 1, parama.hH());
    if (localSet.contains(Integer.valueOf(2)))
      q.c(paramParcel, 2, parama.getMax());
    if (localSet.contains(Integer.valueOf(3)))
      q.c(paramParcel, 3, parama.kw());
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bx
 * JD-Core Version:    0.6.2
 */