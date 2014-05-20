package com.google.android.gms.location;

import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

public final class LocationRequest
  implements SafeParcelable
{
  public static final c RA = new c();
  int KH;
  int Rt = 102;
  long Ru = 3600000L;
  long Rv = ()(this.Ru / 6.0D);
  boolean Rw = false;
  long Rx = 9223372036854775807L;
  int Ry = 2147483647;
  float Rz = 0.0F;

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    LocationRequest localLocationRequest;
    do
    {
      return true;
      if (!(paramObject instanceof LocationRequest))
        return false;
      localLocationRequest = (LocationRequest)paramObject;
    }
    while ((this.Rt == localLocationRequest.Rt) && (this.Ru == localLocationRequest.Ru) && (this.Rv == localLocationRequest.Rv) && (this.Rw == localLocationRequest.Rw) && (this.Rx == localLocationRequest.Rx) && (this.Ry == localLocationRequest.Ry) && (this.Rz == localLocationRequest.Rz));
    return false;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = Integer.valueOf(this.Rt);
    arrayOfObject[1] = Long.valueOf(this.Ru);
    arrayOfObject[2] = Long.valueOf(this.Rv);
    arrayOfObject[3] = Boolean.valueOf(this.Rw);
    arrayOfObject[4] = Long.valueOf(this.Rx);
    arrayOfObject[5] = Integer.valueOf(this.Ry);
    arrayOfObject[6] = Float.valueOf(this.Rz);
    return Arrays.hashCode(arrayOfObject);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = localStringBuilder1.append("Request[");
    String str;
    switch (this.Rt)
    {
    case 101:
    case 103:
    default:
      str = "???";
    case 100:
    case 102:
    case 104:
    case 105:
    }
    while (true)
    {
      localStringBuilder2.append(str);
      if (this.Rt != 105)
      {
        localStringBuilder1.append(" requested=");
        localStringBuilder1.append(this.Ru + "ms");
      }
      localStringBuilder1.append(" fastest=");
      localStringBuilder1.append(this.Rv + "ms");
      if (this.Rx != 9223372036854775807L)
      {
        long l = this.Rx - SystemClock.elapsedRealtime();
        localStringBuilder1.append(" expireIn=");
        localStringBuilder1.append(l + "ms");
      }
      if (this.Ry != 2147483647)
        localStringBuilder1.append(" num=").append(this.Ry);
      localStringBuilder1.append(']');
      return localStringBuilder1.toString();
      str = "PRIORITY_HIGH_ACCURACY";
      continue;
      str = "PRIORITY_BALANCED_POWER_ACCURACY";
      continue;
      str = "PRIORITY_LOW_POWER";
      continue;
      str = "PRIORITY_NO_POWER";
    }
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.LocationRequest
 * JD-Core Version:    0.6.2
 */