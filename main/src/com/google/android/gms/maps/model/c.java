package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.q;

public final class c
  implements Parcelable.Creator
{
  static void a(CameraPosition paramCameraPosition, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramCameraPosition.hH());
    q.a(paramParcel, 2, paramCameraPosition.RR, paramInt, false);
    q.a(paramParcel, 3, paramCameraPosition.vU);
    q.a(paramParcel, 4, paramCameraPosition.RS);
    q.a(paramParcel, 5, paramCameraPosition.RT);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.c
 * JD-Core Version:    0.6.2
 */