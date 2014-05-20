package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.q;

public final class j
  implements Parcelable.Creator
{
  static void a(PolylineOptions paramPolylineOptions, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramPolylineOptions.hH());
    q.a(paramParcel, 2, paramPolylineOptions.lK(), false);
    q.a(paramParcel, 3, paramPolylineOptions.getWidth());
    q.c(paramParcel, 4, paramPolylineOptions.getColor());
    q.a(paramParcel, 5, paramPolylineOptions.lz());
    q.a(paramParcel, 6, paramPolylineOptions.isVisible());
    q.a(paramParcel, 7, paramPolylineOptions.lL());
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.j
 * JD-Core Version:    0.6.2
 */