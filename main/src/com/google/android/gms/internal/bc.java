package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class bc
  implements Parcelable.Creator
{
  static void a(ed paramed, Parcel paramParcel)
  {
    int i = q.g(paramParcel);
    q.a(paramParcel, 1, paramed.getAccountName(), false);
    q.c(paramParcel, 1000, paramed.hH());
    q.a(paramParcel, 2, paramed.iO());
    q.a(paramParcel, 3, paramed.iP());
    q.a(paramParcel, 4, paramed.iQ());
    q.a(paramParcel, 5, paramed.iR(), false);
    q.a(paramParcel, 6, paramed.iS(), false);
    q.a(paramParcel, 7, paramed.iT(), false);
    q.v(paramParcel, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bc
 * JD-Core Version:    0.6.2
 */