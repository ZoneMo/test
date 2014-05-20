package com.tencent.map.location;

import android.content.Context;
import android.location.LocationManager;

public final class o
{
  private static LocationManager Uu = null;
  private static float vJ = 0.0F;
  private boolean TW = false;
  private long TZ = 0L;
  private int Uc = 0;
  private byte[] Ui = new byte[0];
  private boolean Uk = false;
  private p Uv = null;
  private r Uw = null;
  private q Ux = null;
  private int jdField_a_of_type_Int = 1024;
  private Context jdField_a_of_type_AndroidContentContext = null;
  private int b = 0;

  public final boolean a(r paramr, Context paramContext)
  {
    synchronized (this.Ui)
    {
      if (this.TW)
        return true;
      if ((paramContext == null) || (paramr == null))
        return false;
      this.jdField_a_of_type_AndroidContentContext = paramContext;
      this.Uw = paramr;
      try
      {
        Uu = (LocationManager)this.jdField_a_of_type_AndroidContentContext.getSystemService("location");
        this.Uv = new p(this, (byte)0);
        if (Uu != null)
        {
          p localp = this.Uv;
          if (localp != null);
        }
        else
        {
          return false;
        }
      }
      catch (Exception localException1)
      {
        return false;
      }
      try
      {
        Uu.requestLocationUpdates("gps", 1000L, 0.0F, this.Uv);
        Uu.addGpsStatusListener(this.Uv);
        if (Uu.isProviderEnabled("gps"));
        for (this.jdField_a_of_type_Int = 4; ; this.jdField_a_of_type_Int = 0)
        {
          this.TW = true;
          return this.TW;
        }
      }
      catch (Exception localException2)
      {
        return false;
      }
    }
  }

  public final void lX()
  {
    synchronized (this.Ui)
    {
      if (!this.TW)
        return;
      if ((Uu != null) && (this.Uv != null))
      {
        Uu.removeGpsStatusListener(this.Uv);
        Uu.removeUpdates(this.Uv);
      }
      this.TW = false;
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.o
 * JD-Core Version:    0.6.2
 */