package com.tencent.mm.booter;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.compatible.audio.e;
import com.tencent.mm.compatible.c.m;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Set;

public class BluetoothReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramContext == null) || (paramIntent == null) || (au.hX(paramIntent.getAction())));
    int i;
    do
    {
      do
      {
        do
        {
          return;
          BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
          if (localBluetoothAdapter == null)
          {
            aa.d("MicroMsg.BluetoothReceiver", "getDefaultAdapter == null");
            return;
          }
          Set localSet = localBluetoothAdapter.getBondedDevices();
          if ((localSet == null) || (localSet.size() == 0))
          {
            aa.d("MicroMsg.BluetoothReceiver", "getBondedDevices == null");
            return;
          }
        }
        while (au.hX(paramIntent.getAction()));
        aa.d("MicroMsg.BluetoothReceiver", "dkbt action :" + paramIntent.getAction());
      }
      while (!be.se());
      i = paramIntent.getIntExtra("android.media.extra.SCO_AUDIO_STATE", -1);
      aa.d("MicroMsg.BluetoothReceiver", "dkbt  action :" + paramIntent.getAction() + " state:" + i + " isBluetoothScoOn :" + be.uB().pg() + " " + be.uB().pi());
      if ((i == 1) && (be.uB().pg()))
      {
        be.uB().pc();
        return;
      }
    }
    while ((i != 0) || (be.uB().pg()));
    if (s.ceN.cdP == 1)
      be.uB().pf();
    be.uB().pd();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.BluetoothReceiver
 * JD-Core Version:    0.6.2
 */