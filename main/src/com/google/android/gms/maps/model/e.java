package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.q;

public final class e
  implements Parcelable.Creator
{
  static void a(GroundOverlayOptions paramGroundOverlayOptions, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramGroundOverlayOptions.hH());
    q.a(paramParcel, 2, paramGroundOverlayOptions.lA());
    q.a(paramParcel, 3, paramGroundOverlayOptions.lB(), paramInt, false);
    q.a(paramParcel, 4, paramGroundOverlayOptions.getWidth());
    q.a(paramParcel, 5, paramGroundOverlayOptions.getHeight());
    q.a(paramParcel, 6, paramGroundOverlayOptions.lC(), paramInt, false);
    q.a(paramParcel, 7, paramGroundOverlayOptions.getBearing());
    q.a(paramParcel, 8, paramGroundOverlayOptions.lz());
    q.a(paramParcel, 9, paramGroundOverlayOptions.isVisible());
    q.a(paramParcel, 10, paramGroundOverlayOptions.lD());
    q.a(paramParcel, 11, paramGroundOverlayOptions.lE());
    q.a(paramParcel, 12, paramGroundOverlayOptions.lF());
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.e
 * JD-Core Version:    0.6.2
 */