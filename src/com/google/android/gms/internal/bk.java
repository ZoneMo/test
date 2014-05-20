package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.a;
import com.google.android.gms.plus.b;

final class bk extends bf
{
  private final b Nd;

  public bk(bj parambj, b paramb)
  {
    this.Nd = paramb;
  }

  public final void a(int paramInt, Bundle paramBundle, ParcelFileDescriptor paramParcelFileDescriptor)
  {
    PendingIntent localPendingIntent = null;
    if (paramBundle != null)
      localPendingIntent = (PendingIntent)paramBundle.getParcelable("pendingIntent");
    a locala = new a(paramInt, localPendingIntent);
    this.Ne.a(new bn(this.Ne, this.Nd, locala, paramParcelFileDescriptor));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bk
 * JD-Core Version:    0.6.2
 */