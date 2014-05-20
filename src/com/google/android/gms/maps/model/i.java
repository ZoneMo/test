package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.q;

public final class i
  implements Parcelable.Creator
{
  static void a(PolygonOptions paramPolygonOptions, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.c(paramParcel, 1, paramPolygonOptions.hH());
    q.a(paramParcel, 2, paramPolygonOptions.lK(), false);
    q.b(paramParcel, paramPolygonOptions.lJ());
    q.a(paramParcel, 4, paramPolygonOptions.getStrokeWidth());
    q.c(paramParcel, 5, paramPolygonOptions.lx());
    q.c(paramParcel, 6, paramPolygonOptions.ly());
    q.a(paramParcel, 7, paramPolygonOptions.lz());
    q.a(paramParcel, 8, paramPolygonOptions.isVisible());
    q.a(paramParcel, 9, paramPolygonOptions.lL());
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.i
 * JD-Core Version:    0.6.2
 */