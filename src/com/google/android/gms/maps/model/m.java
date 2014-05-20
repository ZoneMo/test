package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.q;

public final class m
  implements Parcelable.Creator
{
  static void a(TileOverlayOptions paramTileOverlayOptions, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramTileOverlayOptions.hH());
    q.a(paramParcel, 2, paramTileOverlayOptions.lM());
    q.a(paramParcel, 3, paramTileOverlayOptions.isVisible());
    q.a(paramParcel, 4, paramTileOverlayOptions.lz());
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.m
 * JD-Core Version:    0.6.2
 */