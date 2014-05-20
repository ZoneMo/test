package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.q;

public final class c
  implements Parcelable.Creator
{
  static void a(LocationRequest paramLocationRequest, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramLocationRequest.Rt);
    q.c(paramParcel, 1000, paramLocationRequest.KH);
    q.a(paramParcel, 2, paramLocationRequest.Ru);
    q.a(paramParcel, 3, paramLocationRequest.Rv);
    q.a(paramParcel, 4, paramLocationRequest.Rw);
    q.a(paramParcel, 5, paramLocationRequest.Rx);
    q.c(paramParcel, 6, paramLocationRequest.Ry);
    q.a(paramParcel, 7, paramLocationRequest.Rz);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.c
 * JD-Core Version:    0.6.2
 */