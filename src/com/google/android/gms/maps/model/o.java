package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.q;

public final class o
  implements Parcelable.Creator
{
  static void a(VisibleRegion paramVisibleRegion, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramVisibleRegion.hH());
    q.a(paramParcel, 2, paramVisibleRegion.SN, paramInt, false);
    q.a(paramParcel, 3, paramVisibleRegion.SO, paramInt, false);
    q.a(paramParcel, 4, paramVisibleRegion.SP, paramInt, false);
    q.a(paramParcel, 5, paramVisibleRegion.SQ, paramInt, false);
    q.a(paramParcel, 6, paramVisibleRegion.SR, paramInt, false);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.o
 * JD-Core Version:    0.6.2
 */