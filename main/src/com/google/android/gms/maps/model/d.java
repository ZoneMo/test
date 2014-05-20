package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.q;

public final class d
  implements Parcelable.Creator
{
  static void a(CircleOptions paramCircleOptions, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramCircleOptions.hH());
    q.a(paramParcel, 2, paramCircleOptions.lv(), paramInt, false);
    q.a(paramParcel, 3, paramCircleOptions.lw());
    q.a(paramParcel, 4, paramCircleOptions.getStrokeWidth());
    q.c(paramParcel, 5, paramCircleOptions.lx());
    q.c(paramParcel, 6, paramCircleOptions.ly());
    q.a(paramParcel, 7, paramCircleOptions.lz());
    q.a(paramParcel, 8, paramCircleOptions.isVisible());
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.d
 * JD-Core Version:    0.6.2
 */