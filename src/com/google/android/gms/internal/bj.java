package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.plus.b;

public final class bj extends da
{
  public final void a(b paramb, int paramInt)
  {
    lh();
    new Bundle().putInt("bounding_box", paramInt);
    bk localbk = new bk(this, paramb);
    try
    {
      ((bi)li()).iU();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localbk.a(8, null, null);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bj
 * JD-Core Version:    0.6.2
 */