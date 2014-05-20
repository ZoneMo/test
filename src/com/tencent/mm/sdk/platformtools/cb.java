package com.tencent.mm.sdk.platformtools;

import android.hardware.SensorListener;

final class cb
  implements SensorListener
{
  private float[] ejO = { 0.0F, 0.0F, 0.0F };
  private Runnable gbX;

  public cb(Runnable paramRunnable)
  {
    this.gbX = paramRunnable;
  }

  public final void onAccuracyChanged(int paramInt1, int paramInt2)
  {
  }

  public final void onSensorChanged(int paramInt, float[] paramArrayOfFloat)
  {
    int i = 0;
    float[] arrayOfFloat = new float[3];
    for (int j = 0; j < 3; j++)
    {
      arrayOfFloat[j] = Math.abs(paramArrayOfFloat[j] - this.ejO[j]);
      if ((this.ejO[j] != 0.0F) && (arrayOfFloat[j] > 1.0F))
      {
        i = 1;
        aa.d("MicroMsg.ShakeManager", "isONShake:" + arrayOfFloat[j]);
      }
      this.ejO[j] = paramArrayOfFloat[j];
    }
    if (i != 0)
      this.gbX.run();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.cb
 * JD-Core Version:    0.6.2
 */