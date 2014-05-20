package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.q;

public final class g
  implements Parcelable.Creator
{
  static void a(LatLng paramLatLng, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramLatLng.hH());
    q.a(paramParcel, 2, paramLatLng.Sq);
    q.a(paramParcel, 3, paramLatLng.Sr);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.g
 * JD-Core Version:    0.6.2
 */