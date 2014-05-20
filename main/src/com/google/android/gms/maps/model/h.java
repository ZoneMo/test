package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.q;

public final class h
  implements Parcelable.Creator
{
  static void a(MarkerOptions paramMarkerOptions, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramMarkerOptions.hH());
    q.a(paramParcel, 2, paramMarkerOptions.lH(), paramInt, false);
    q.a(paramParcel, 3, paramMarkerOptions.getTitle(), false);
    q.a(paramParcel, 4, paramMarkerOptions.getSnippet(), false);
    q.a(paramParcel, 5, paramMarkerOptions.lG());
    q.a(paramParcel, 6, paramMarkerOptions.lE());
    q.a(paramParcel, 7, paramMarkerOptions.lF());
    q.a(paramParcel, 8, paramMarkerOptions.lI());
    q.a(paramParcel, 9, paramMarkerOptions.isVisible());
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.h
 * JD-Core Version:    0.6.2
 */