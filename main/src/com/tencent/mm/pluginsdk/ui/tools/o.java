package com.tencent.mm.pluginsdk.ui.tools;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import com.tencent.mm.sdk.platformtools.aa;

final class o
  implements SensorEventListener
{
  o(n paramn)
  {
  }

  public final void onAccuracyChanged(Sensor paramSensor, int paramInt)
  {
    aa.i("MicroMsg.HeadingPitchSensorMgr", "onAccuracyChanged");
  }

  public final void onSensorChanged(SensorEvent paramSensorEvent)
  {
    if (paramSensorEvent.sensor.getType() == 3)
    {
      n.a(this.fuw)[0] = paramSensorEvent.values[0];
      n.a(this.fuw)[1] = paramSensorEvent.values[1];
      n.a(this.fuw)[2] = paramSensorEvent.values[2];
      if (this.fuw.fur != -10000)
        break label158;
      this.fuw.fur = ((int)n.a(this.fuw)[0]);
    }
    while (true)
    {
      if (this.fuw.fur == 0)
        this.fuw.fur = 1;
      if (this.fuw.fur == 365)
        this.fuw.fur = 364;
      if (this.fuw.fus != -10000)
        break;
      this.fuw.fus = ((int)n.a(this.fuw)[1]);
      return;
      label158: if ((n.a(this.fuw)[0] - this.fuw.fur > 300.0F) || (n.a(this.fuw)[0] - this.fuw.fur < -300.0F))
        this.fuw.fur = ((int)n.a(this.fuw)[0]);
      else
        this.fuw.fur = ((int)(0.6D * this.fuw.fur + 0.4D * n.a(this.fuw)[0]));
    }
    if (n.a(this.fuw)[1] < -68.0F)
    {
      int i = (int)(-68.0D + (68.0F + n.a(this.fuw)[1]) / 1.5D);
      if (i < -89)
        i = -89;
      this.fuw.fus = i;
      return;
    }
    if (n.a(this.fuw)[1] > 89.0F)
    {
      this.fuw.fus = 89;
      return;
    }
    this.fuw.fus = ((int)(0.6D * this.fuw.fus + 0.4D * n.a(this.fuw)[1]));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.o
 * JD-Core Version:    0.6.2
 */