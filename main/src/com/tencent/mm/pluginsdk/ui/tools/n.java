package com.tencent.mm.pluginsdk.ui.tools;

import android.content.Context;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.tencent.mm.sdk.platformtools.aa;

public final class n
  implements z
{
  public static n fuv = null;
  public boolean cRA = false;
  private float[] fuq = new float[3];
  int fur = -10000;
  int fus = -10000;
  private SensorManager fut;
  private SensorEventListener fuu;

  public final int auO()
  {
    aa.d("MicroMsg.HeadingPitchSensorMgr", "getHeading() " + this.fur);
    return this.fur;
  }

  public final void auP()
  {
    fuv = this;
  }

  public final void auQ()
  {
    fuv = null;
  }

  public final void auR()
  {
    if ((this.fut != null) && (this.fuu != null))
      this.fut.unregisterListener(this.fuu);
    this.cRA = false;
  }

  public final void ba(Context paramContext)
  {
    aa.d("MicroMsg.HeadingPitchSensorMgr", "initSensor() ");
    if (paramContext == null)
    {
      aa.e("MicroMsg.HeadingPitchSensorMgr", "initSensor() context == null");
      return;
    }
    if (this.fut == null)
      this.fut = ((SensorManager)paramContext.getSystemService("sensor"));
    if (this.fuu == null)
      this.fuu = new o(this);
    this.fut.registerListener(this.fuu, this.fut.getDefaultSensor(3), 3);
    this.cRA = true;
    aa.d("MicroMsg.HeadingPitchSensorMgr", "initSensor() finish");
  }

  public final void bb(Context paramContext)
  {
    ba(paramContext);
  }

  public final String getName()
  {
    return "HeadingPitchSensorMgr";
  }

  public final int getPitch()
  {
    aa.d("MicroMsg.HeadingPitchSensorMgr", "getPitch() " + this.fus);
    return this.fus;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.n
 * JD-Core Version:    0.6.2
 */