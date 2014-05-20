package com.tencent.mm.compatible.audio;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Build;
import android.os.Build.VERSION;
import com.tencent.mm.compatible.c.m;
import com.tencent.mm.compatible.c.n;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bg;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class e
{
  private static boolean cbl = false;
  private static boolean cbm = false;
  private static boolean cbn = false;
  private final AudioManager cbj;
  private int cbk = 2;
  private final Set cbo = new HashSet();

  public e(Context paramContext)
  {
    this.cbj = ((AudioManager)paramContext.getSystemService("audio"));
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = pi();
    aa.e("MicroMsg.MMAudioManager", "init dkbt %s", arrayOfObject);
    paramContext.registerReceiver(new f(this), new IntentFilter("com.htc.accessory.action.CONNECTION_EXISTING"));
    paramContext.registerReceiver(new g(this), new IntentFilter("android.bluetooth.device.action.ACL_CONNECTED"));
    paramContext.registerReceiver(new h(this), new IntentFilter("android.bluetooth.device.action.ACL_DISCONNECTED"));
    if (com.tencent.mm.compatible.g.i.bG(11))
      paramContext.registerReceiver(new i(this), new IntentFilter("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"));
  }

  private void bx(int paramInt)
  {
    Iterator localIterator = this.cbo.iterator();
    while (localIterator.hasNext())
      ((j)localIterator.next()).bA(paramInt);
  }

  @TargetApi(14)
  private static boolean ph()
  {
    int i = 1;
    boolean bool1;
    try
    {
      if (Build.VERSION.SDK_INT >= 14)
      {
        if (BluetoothAdapter.getDefaultAdapter().getProfileConnectionState(1) != 2)
          break label60;
        return i;
      }
      if (!cbl)
        if (s.ceN.cea == i)
        {
          boolean bool2 = BluetoothAdapter.getDefaultAdapter().isEnabled();
          return bool2;
        }
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.MMAudioManager", "dkbt exception in isConnectDevice()");
      bool1 = false;
    }
    return bool1;
    label60: return false;
  }

  private boolean pj()
  {
    return this.cbj.getMode() == 0;
  }

  public final boolean K(boolean paramBoolean)
  {
    return e(paramBoolean, false);
  }

  public final void a(j paramj)
  {
    if (paramj != null)
      this.cbo.add(paramj);
  }

  public final boolean a(boolean paramBoolean, int paramInt)
  {
    int i = this.cbj.getStreamMaxVolume(paramInt);
    aa.d("MicroMsg.MMAudioManager", "maxVolumn:" + i);
    int j = i / 3;
    int k = this.cbj.getStreamVolume(paramInt);
    if (k < j)
      this.cbj.setStreamVolume(paramInt, j, 0);
    aa.d("MicroMsg.MMAudioManager", "StreamType:" + paramInt + "  current:" + k);
    return e(paramBoolean, true);
  }

  public final void b(j paramj)
  {
    if (paramj != null)
      this.cbo.remove(paramj);
  }

  public final void by(int paramInt)
  {
    if (this.cbj != null)
      this.cbj.adjustStreamVolume(paramInt, 1, 5);
  }

  public final void bz(int paramInt)
  {
    if (this.cbj != null)
      this.cbj.adjustStreamVolume(paramInt, -1, 5);
  }

  public final int d(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((s.ceN.cea == 1) && (paramBoolean2));
    while (true)
    {
      return 0;
      if (paramBoolean1);
      for (int i = 3; !this.cbj.isBluetoothScoOn(); i = 0)
        return i;
    }
  }

  @TargetApi(11)
  public final boolean e(boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = 1;
    int j = this.cbj.getMode();
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Boolean.valueOf(pj());
    arrayOfObject1[i] = Boolean.valueOf(paramBoolean1);
    arrayOfObject1[2] = pi();
    aa.e("MicroMsg.MMAudioManager", "dkbt shiftSpeaker:%b -> %b  %s", arrayOfObject1);
    if (bg.wD())
    {
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = Integer.valueOf(j);
      arrayOfObject3[i] = Integer.valueOf(this.cbk);
      aa.f("MicroMsg.MMAudioManager", "shiftSpeaker return when calling Mode:%d blue:%d", arrayOfObject3);
      paramBoolean1 = false;
    }
    label390: label423: label552: label600: boolean bool1;
    label663: label673: label809: label857: 
    do
    {
      while (true)
      {
        return paramBoolean1;
        if (this.cbk == i)
        {
          if ((s.ceN.cea == i) && (paramBoolean2))
            this.cbj.setBluetoothScoOn(i);
          while (true)
          {
            return false;
            this.cbj.setMode(0);
          }
        }
        if ((s.ceN.cea == i) && (paramBoolean2))
        {
          this.cbj.setSpeakerphoneOn(paramBoolean1);
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Integer.valueOf(j);
          arrayOfObject2[i] = Boolean.valueOf(paramBoolean1);
          aa.e("MicroMsg.MMAudioManager", "doShiftSpeaker htc device mode:%d beSpeakerphoneOn:%b", arrayOfObject2);
          return i;
        }
        if (this.cbj != null)
        {
          boolean bool6 = this.cbj.isSpeakerphoneOn();
          Object localObject = n.pK().bC(98305);
          n.pK().bC(94209);
          if (localObject == null)
          {
            n.pK().set(98305, Boolean.valueOf(bool6));
            aa.d("MicroMsg.MMAudioManager", "storeAudioConfig spearkeron " + bool6);
          }
        }
        if (!paramBoolean2)
          break label673;
        if (!s.ceL.ccY)
          break label930;
        com.tencent.mm.compatible.c.a locala3 = s.ceL;
        if (((locala3.cda >= 0) && (locala3.cdb < 0)) || ((locala3.cda < 0) && (locala3.cdb >= 0)) || (locala3.cdc > 0))
        {
          int i1 = i;
          if (i1 == 0)
            break;
          if (s.ceL.cda < 0)
            break label390;
          this.cbj.setMode(s.ceL.cda);
        }
        while (true)
        {
          if (s.ceL.cdc <= 0)
            break label423;
          this.cbj.setSpeakerphoneOn(paramBoolean1);
          return paramBoolean1;
          int i2 = 0;
          break;
          if (s.ceL.cdb >= 0)
            if (paramBoolean1)
              this.cbj.setMode(0);
            else
              this.cbj.setMode(2);
        }
      }
      if (s.ceL.pC())
      {
        if (paramBoolean1)
        {
          com.tencent.mm.compatible.c.a locala5 = s.ceL;
          boolean bool5 = locala5.pC();
          int i6 = 0;
          int i7;
          StringBuilder localStringBuilder4;
          if (bool5)
          {
            i7 = 0x10 & locala5.cdd;
            localStringBuilder4 = new StringBuilder("enableSpeaker ");
            if (i7 <= 0)
              break label552;
          }
          int i9;
          for (int i8 = i; ; i9 = 0)
          {
            aa.d("VoipAudioInfo", i8);
            i6 = 0;
            if (i7 > 0)
              i6 = i;
            if (i6 != 0)
              this.cbj.setSpeakerphoneOn(i);
            if (s.ceL.pE() < 0)
              break;
            this.cbj.setMode(s.ceL.pE());
            return paramBoolean1;
          }
        }
        com.tencent.mm.compatible.c.a locala4 = s.ceL;
        if (locala4.pC())
        {
          int i3 = 0x1 & locala4.cdd;
          StringBuilder localStringBuilder3 = new StringBuilder("disableSpeaker ");
          if (i3 > 0)
          {
            int i4 = i;
            aa.d("VoipAudioInfo", i4);
            if (i3 <= 0)
              break label663;
          }
        }
        while (true)
        {
          if (i != 0)
            this.cbj.setSpeakerphoneOn(false);
          if (s.ceL.pF() < 0)
            break;
          this.cbj.setMode(s.ceL.pF());
          return paramBoolean1;
          int i5 = 0;
          break label600;
          bool1 = false;
          continue;
          bool1 = false;
        }
        if ((s.ceL.ccY) && (s.ceL.pD()))
        {
          if (paramBoolean1)
          {
            com.tencent.mm.compatible.c.a locala2 = s.ceL;
            boolean bool3 = locala2.pD();
            int m = 0;
            int n;
            StringBuilder localStringBuilder2;
            if (bool3)
            {
              n = 0x10 & locala2.cde;
              localStringBuilder2 = new StringBuilder("enableSpeaker ");
              if (n <= 0)
                break label809;
            }
            for (boolean bool4 = bool1; ; bool4 = false)
            {
              aa.d("VoipAudioInfo", bool4);
              m = 0;
              if (n > 0)
                m = bool1;
              if (m != 0)
                this.cbj.setSpeakerphoneOn(bool1);
              if (s.ceL.pG() < 0)
                break;
              this.cbj.setMode(s.ceL.pG());
              return paramBoolean1;
            }
          }
          com.tencent.mm.compatible.c.a locala1 = s.ceL;
          boolean bool2;
          if (locala1.pD())
          {
            int k = 0x1 & locala1.cde;
            StringBuilder localStringBuilder1 = new StringBuilder("disableSpeaker ");
            if (k > 0)
            {
              bool2 = bool1;
              aa.d("VoipAudioInfo", bool2);
              if (k <= 0)
                break label920;
            }
          }
          while (true)
          {
            if (bool1)
              this.cbj.setSpeakerphoneOn(false);
            if (s.ceL.pH() < 0)
              break;
            this.cbj.setMode(s.ceL.pH());
            return paramBoolean1;
            bool2 = false;
            break label857;
            bool1 = false;
            continue;
            bool1 = false;
          }
        }
      }
      this.cbj.setSpeakerphoneOn(paramBoolean1);
    }
    while (pj() == paramBoolean1);
    label920: label930: if (paramBoolean1)
    {
      this.cbj.setMode(0);
      return paramBoolean1;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      if (cj.R(Build.MANUFACTURER, "").toLowerCase().indexOf("samsung".toLowerCase()) >= 0);
      while ((bool1) && (2 != s.ceN.ceb))
      {
        this.cbj.setMode(3);
        return paramBoolean1;
        bool1 = false;
      }
    }
    this.cbj.setMode(2);
    return paramBoolean1;
  }

  public final int getMode()
  {
    return this.cbj.getMode();
  }

  public final boolean isSpeakerphoneOn()
  {
    return this.cbj.isSpeakerphoneOn();
  }

  public final void pb()
  {
    e(true, false);
  }

  public final void pc()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = pi();
    aa.e("MicroMsg.MMAudioManager", "dkbt bluetoothStartSucc %s", arrayOfObject);
    if (this.cbk != 1)
    {
      this.cbk = 1;
      bx(this.cbk);
    }
  }

  public final void pd()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = pi();
    aa.e("MicroMsg.MMAudioManager", "dkbt buletoothStopped %s", arrayOfObject);
    if (this.cbk != 2)
    {
      this.cbk = 2;
      bx(this.cbk);
    }
  }

  public final int pe()
  {
    int i = 1;
    aa.d("MicroMsg.MMAudioManager", "dkbt isBluetoothCanUse existing:" + cbm + " , isUseHTCAccessory = " + cbn);
    int j;
    if ((cbm) && (!cbn))
      j = 0;
    while (j == 0)
    {
      i = -1;
      return i;
      aa.d("MicroMsg.MMAudioManager", "dkbt isConnectDevice:" + cbl);
      if (!ph())
      {
        aa.d("MicroMsg.MMAudioManager", "dkbt isConnectDevice =  " + cbl + " , isConnectDevice() = " + ph());
        j = 0;
      }
      else
      {
        BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        if (localBluetoothAdapter == null)
        {
          aa.d("MicroMsg.MMAudioManager", "dkbt BluetoothAdapter.getDefaultAdapter() == null");
          j = 0;
        }
        else if (!localBluetoothAdapter.isEnabled())
        {
          aa.d("MicroMsg.MMAudioManager", "dkbt !adp.isEnabled()");
          j = 0;
        }
        else
        {
          Set localSet = localBluetoothAdapter.getBondedDevices();
          if ((localSet == null) || (localSet.size() == 0))
          {
            aa.d("MicroMsg.MMAudioManager", "dkbt setDev == null || setDev.size() == 0");
            j = 0;
          }
          else
          {
            Iterator localIterator = localSet.iterator();
            do
              if (!localIterator.hasNext())
                break;
            while (((BluetoothDevice)localIterator.next()).getBondState() != 12);
          }
        }
      }
    }
    int m;
    for (int k = i; ; m = 0)
    {
      if (k == 0)
      {
        aa.d("MicroMsg.MMAudioManager", "dkbt hasBond == false");
        j = 0;
        break;
      }
      j = i;
      break;
      Object[] arrayOfObject1 = new Object[i];
      arrayOfObject1[0] = pi();
      aa.e("MicroMsg.MMAudioManager", "dkbt begin tryStartBluetooth %s", arrayOfObject1);
      AudioManager localAudioManager = this.cbj;
      boolean bool;
      if (com.tencent.mm.compatible.g.i.bH(8))
        bool = false;
      while (true)
      {
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = pi();
        arrayOfObject2[i] = Boolean.valueOf(bool);
        aa.e("MicroMsg.MMAudioManager", "dkbt end tryStartBluetooth %s ret:%s", arrayOfObject2);
        aa.d("MicroMsg.MMAudioManager", "dkbt  tryStartBluetooth " + pi() + " ret:" + bool);
        if (this.cbj.isBluetoothScoOn())
          break;
        return 0;
        if (!localAudioManager.isBluetoothScoAvailableOffCall())
        {
          bool = false;
        }
        else if (bg.wD())
        {
          bool = false;
        }
        else
        {
          if ((s.ceN.cdR == i) || (s.ceN.cdR == -1))
            localAudioManager.startBluetoothSco();
          if ((s.ceN.cdS == i) || (s.ceN.cdR == -1))
            localAudioManager.setBluetoothScoOn(i);
          bool = i;
        }
      }
    }
  }

  public final void pf()
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = pi();
    aa.e("MicroMsg.MMAudioManager", "dkbt begin stopBluetooth %s", arrayOfObject1);
    com.tencent.mm.compatible.b.a.a(this.cbj);
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = pi();
    aa.e("MicroMsg.MMAudioManager", "dkbt end stopBluetooth %s", arrayOfObject2);
  }

  public final boolean pg()
  {
    return this.cbj.isBluetoothScoOn();
  }

  public final String pi()
  {
    return "mode:" + this.cbj.getMode() + " isSpeakerphoneOn:" + this.cbj.isSpeakerphoneOn() + " isBluetoothOn:" + this.cbj.isBluetoothScoOn() + " btStatus:" + this.cbk;
  }

  public final void pk()
  {
    if (this.cbj != null)
      this.cbj.setStreamMute(3, true);
  }

  public final void pl()
  {
    if (this.cbj != null)
      this.cbj.setStreamMute(3, false);
  }

  public final void pm()
  {
    if (this.cbj != null)
    {
      Object localObject = n.pK().bC(98305);
      if (localObject != null)
      {
        aa.d("MicroMsg.MMAudioManager", "resumeAudioConfig spearkeron " + localObject);
        this.cbj.setSpeakerphoneOn(((Boolean)localObject).booleanValue());
        n.pK().set(98305, null);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.e
 * JD-Core Version:    0.6.2
 */