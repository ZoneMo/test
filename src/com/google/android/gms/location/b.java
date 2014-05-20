package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.q;

public final class b
  implements Parcelable.Creator
{
  static void a(DetectedActivity paramDetectedActivity, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramDetectedActivity.Rr);
    q.c(paramParcel, 1000, paramDetectedActivity.KH);
    q.c(paramParcel, 2, paramDetectedActivity.Rs);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.b
 * JD-Core Version:    0.6.2
 */