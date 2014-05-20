package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.q;

public final class a
  implements Parcelable.Creator
{
  static void a(ActivityRecognitionResult paramActivityRecognitionResult, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.a(paramParcel, 1, paramActivityRecognitionResult.Rn, false);
    q.c(paramParcel, 1000, paramActivityRecognitionResult.KH);
    q.a(paramParcel, 2, paramActivityRecognitionResult.Ro);
    q.a(paramParcel, 3, paramActivityRecognitionResult.Rp);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.a
 * JD-Core Version:    0.6.2
 */