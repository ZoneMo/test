package com.tencent.mm.compatible.audio;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.compatible.b.a;
import com.tencent.mm.compatible.c.m;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.sdk.platformtools.aa;

final class h extends BroadcastReceiver
{
  h(e parame)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    e.M(false);
    if (s.ceN.cdP == 1)
      a.a(e.a(this.cbp));
    aa.d("MicroMsg.MMAudioManager", "dkbt onReceive action[ BluetoothDevice.ACTION_ACL_DISCONNECTED ] ");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.h
 * JD-Core Version:    0.6.2
 */