package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class ao$a
  implements SafeParcelable
{
  public static final w LW = new w();
  final String LX;
  final int LY;
  final int versionCode;

  ao$a(int paramInt1, String paramString, int paramInt2)
  {
    this.versionCode = paramInt1;
    this.LX = paramString;
    this.LY = paramInt2;
  }

  ao$a(String paramString, int paramInt)
  {
    this.versionCode = 1;
    this.LX = paramString;
    this.LY = paramInt;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    w.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ao.a
 * JD-Core Version:    0.6.2
 */