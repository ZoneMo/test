package com.tencent.mm.sdk.platformtools;

import android.os.HandlerThread;

final class ao
  implements ar
{
  ao(an paraman, as paramas, Object paramObject)
  {
  }

  public final boolean ve()
  {
    aa.d("MicroMsg.MMHandlerThread", "syncReset doInBackground");
    an.b(this.gdM).quit();
    if (this.gdK != null)
      this.gdK.uO();
    an.c(this.gdM);
    synchronized (this.gdL)
    {
      this.gdL.notify();
      return true;
    }
  }

  public final boolean vf()
  {
    aa.d("MicroMsg.MMHandlerThread", "syncReset onPostExecute");
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.ao
 * JD-Core Version:    0.6.2
 */