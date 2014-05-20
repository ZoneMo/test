package com.tencent.mm.sdk.platformtools;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

public class SensorController extends BroadcastReceiver
  implements SensorEventListener
{
  private static float geT = 4.294967E+09F;
  private static float geW = 0.5F;
  public static boolean gfc = false;
  private Context context;
  private SensorManager geU;
  private float geV;
  private bz geX;
  private Sensor geY;
  private final boolean geZ;
  private boolean gfa = false;
  private boolean gfb = false;

  public SensorController(Context paramContext)
  {
    if (paramContext == null)
    {
      this.geZ = false;
      return;
    }
    this.context = paramContext;
    this.geU = ((SensorManager)paramContext.getSystemService("sensor"));
    this.geY = this.geU.getDefaultSensor(8);
    if (this.geY != null);
    for (boolean bool = true; ; bool = false)
    {
      this.geZ = bool;
      this.geV = (1.0F + geW);
      return;
    }
  }

  public final void a(bz parambz)
  {
    aa.v("MicroMsg.SensorController", "sensor callback set, isRegistered:" + this.gfb);
    if (!this.gfb)
    {
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.HEADSET_PLUG");
      this.context.registerReceiver(this, localIntentFilter);
      this.geU.registerListener(this, this.geY, 2);
      this.gfb = true;
    }
    this.geX = parambz;
  }

  public final void azI()
  {
    aa.v("MicroMsg.SensorController", "sensor callback removed");
    try
    {
      this.context.unregisterReceiver(this);
      this.geU.unregisterListener(this, this.geY);
      this.geU.unregisterListener(this);
      this.gfb = false;
      this.geX = null;
      return;
    }
    catch (Exception localException)
    {
      while (true)
        aa.v("MicroMsg.SensorController", "sensor receiver has already unregistered");
    }
  }

  public final boolean azJ()
  {
    return this.gfb;
  }

  public void onAccuracyChanged(Sensor paramSensor, int paramInt)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null);
    int i;
    do
    {
      do
        return;
      while (!paramIntent.getAction().equals("android.intent.action.HEADSET_PLUG"));
      i = paramIntent.getIntExtra("state", 0);
      if (i == 1)
        this.gfa = true;
    }
    while (i != 0);
    this.gfa = false;
  }

  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    if ((paramSensorEvent == null) || (paramSensorEvent.sensor == null));
    float f;
    do
    {
      do
      {
        do
          return;
        while (this.gfa);
        f = paramSensorEvent.values[0];
        switch (paramSensorEvent.sensor.getType())
        {
        default:
          return;
        case 8:
        }
        if (!gfc)
          break label136;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Float.valueOf(f);
        aa.e("MicroMsg.SensorController", "isON: newValue:%f", arrayOfObject);
        if (0.0D != f)
          break;
      }
      while (this.geX == null);
      aa.v("MicroMsg.SensorController", "sensor near-far event false");
      this.geX.af(false);
      return;
    }
    while (this.geX == null);
    aa.v("MicroMsg.SensorController", "sensor near-far event true");
    this.geX.af(true);
    return;
    label136: if (f < geT)
    {
      geT = f;
      geW = 0.5F + f;
    }
    aa.d("MicroMsg.SensorController", "isON: minValue:" + geT + " newValue: " + f);
    if ((this.geV >= geW) && (f < geW))
      if (this.geX != null)
      {
        aa.v("MicroMsg.SensorController", "sensor event false");
        this.geX.af(false);
      }
    while (true)
    {
      this.geV = f;
      return;
      if ((this.geV <= geW) && (f > geW) && (this.geX != null))
      {
        aa.v("MicroMsg.SensorController", "sensor event true");
        this.geX.af(true);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.SensorController
 * JD-Core Version:    0.6.2
 */