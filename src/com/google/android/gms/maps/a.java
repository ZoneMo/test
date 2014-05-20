package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.q;

public final class a
  implements Parcelable.Creator
{
  static void a(GoogleMapOptions paramGoogleMapOptions, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramGoogleMapOptions.hH());
    q.a(paramParcel, 2, paramGoogleMapOptions.lj());
    q.a(paramParcel, 3, paramGoogleMapOptions.lk());
    q.c(paramParcel, 4, paramGoogleMapOptions.lr());
    q.a(paramParcel, 5, paramGoogleMapOptions.ls(), paramInt, false);
    q.a(paramParcel, 6, paramGoogleMapOptions.ll());
    q.a(paramParcel, 7, paramGoogleMapOptions.lm());
    q.a(paramParcel, 8, paramGoogleMapOptions.ln());
    q.a(paramParcel, 9, paramGoogleMapOptions.lo());
    q.a(paramParcel, 10, paramGoogleMapOptions.lp());
    q.a(paramParcel, 11, paramGoogleMapOptions.lq());
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a
 * JD-Core Version:    0.6.2
 */