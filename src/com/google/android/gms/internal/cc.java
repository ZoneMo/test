package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Set;

public final class cc
  implements Parcelable.Creator
{
  static void a(eu.d paramd, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    Set localSet = paramd.jf();
    if (localSet.contains(Integer.valueOf(1)))
      q.c(paramParcel, 1, paramd.hH());
    if (localSet.contains(Integer.valueOf(2)))
      q.a(paramParcel, 2, paramd.getUrl(), true);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cc
 * JD-Core Version:    0.6.2
 */