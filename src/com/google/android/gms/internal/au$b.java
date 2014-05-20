package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class au$b
  implements SafeParcelable
{
  public static final z Mq = new z();
  final String Mr;
  final ar.a Ms;
  final int versionCode;

  au$b(int paramInt, String paramString, ar.a parama)
  {
    this.versionCode = paramInt;
    this.Mr = paramString;
    this.Ms = parama;
  }

  au$b(String paramString, ar.a parama)
  {
    this.versionCode = 1;
    this.Mr = paramString;
    this.Ms = parama;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    z.a(this, paramParcel, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.au.b
 * JD-Core Version:    0.6.2
 */