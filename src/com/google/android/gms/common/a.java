package com.google.android.gms.common;

import android.app.PendingIntent;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.h;

public final class a
{
  public static final a Kf = new a(0, null);
  private final PendingIntent Kg;
  private final int p;

  public a(int paramInt, PendingIntent paramPendingIntent)
  {
    this.p = paramInt;
    this.Kg = paramPendingIntent;
  }

  public final String toString()
  {
    h localh = g.L(this);
    String str;
    switch (this.p)
    {
    default:
      str = "unknown status code " + this.p;
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    }
    while (true)
    {
      return localh.a("statusCode", str).a("resolution", this.Kg).toString();
      str = "SUCCESS";
      continue;
      str = "SERVICE_MISSING";
      continue;
      str = "SERVICE_VERSION_UPDATE_REQUIRED";
      continue;
      str = "SERVICE_DISABLED";
      continue;
      str = "SIGN_IN_REQUIRED";
      continue;
      str = "INVALID_ACCOUNT";
      continue;
      str = "RESOLUTION_REQUIRED";
      continue;
      str = "NETWORK_ERROR";
      continue;
      str = "INTERNAL_ERROR";
      continue;
      str = "SERVICE_INVALID";
      continue;
      str = "DEVELOPER_ERROR";
      continue;
      str = "LICENSE_CHECK_FAILED";
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.a
 * JD-Core Version:    0.6.2
 */