package com.tencent.mm.compatible.b;

import android.annotation.TargetApi;
import android.media.AudioManager;
import com.tencent.mm.compatible.c.m;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.compatible.g.i;
import com.tencent.mm.sdk.platformtools.bg;

public final class a
{
  @TargetApi(8)
  public static boolean a(AudioManager paramAudioManager)
  {
    if (i.bH(8));
    while (bg.wD())
      return false;
    if ((s.ceN.cdQ == 1) || (s.ceN.cdR == -1))
      paramAudioManager.setBluetoothScoOn(false);
    if ((s.ceN.cdQ == 1) || (s.ceN.cdR == -1))
      paramAudioManager.stopBluetoothSco();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.b.a
 * JD-Core Version:    0.6.2
 */