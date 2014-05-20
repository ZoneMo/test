package com.tencent.mm.compatible.c;

import android.annotation.TargetApi;
import android.app.Activity;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.os.Build;
import android.os.Build.VERSION;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.List;

public final class d
{
  public static f a(Activity paramActivity, int paramInt)
  {
    int i = -1;
    f localf1;
    if (s.ceK.cdF == 1)
    {
      aa.d("MicroMsg.CameraUtil", "openCamera(), CameraUtilImpl20, cameraId = " + paramInt);
      new h();
      localf1 = h.pJ();
    }
    while (true)
    {
      return localf1;
      if (s.ceK.cdx)
      {
        aa.d("MicroMsg.CameraUtil", "openCamera(), CameraUtilImplConfig, cameraId = " + paramInt);
        new k();
        return k.bB(paramInt);
      }
      if (!Build.MODEL.equals("M9"))
        break;
      new l();
      localf1 = new f();
      localf1.cdN = Camera.open();
      localf1.cdK = 0;
      if (Build.DISPLAY.startsWith("Flyme"))
      {
        localf1.cdK = 90;
        localf1.cdN.setDisplayOrientation(90);
        return localf1;
      }
      if (!Build.MODEL.equals("M9"));
      while (i >= 7093)
      {
        localf1.cdK = 90;
        localf1.cdN.setDisplayOrientation(180);
        return localf1;
        String str = Build.DISPLAY;
        if (!str.substring(0, 0).equals("1"))
        {
          String[] arrayOfString = str.split("-");
          if ((arrayOfString != null) && (arrayOfString.length >= 2))
            i = Integer.parseInt(arrayOfString[1]);
        }
      }
    }
    if ((Build.VERSION.SDK_INT >= 9) && (getNumberOfCameras() > 1))
    {
      aa.d("MicroMsg.CameraUtil", "openCamera(), CameraUtilImpl23, cameraId = " + paramInt);
      new j();
      return j.a(paramActivity, paramInt);
    }
    if (Build.VERSION.SDK_INT >= 8)
    {
      new i();
      f localf2 = new f();
      localf2.cdN = Camera.open();
      localf2.cdK = 90;
      localf2.cdN.setDisplayOrientation(localf2.cdK);
      return localf2;
    }
    if (Build.VERSION.SDK_INT >= 5)
    {
      new h();
      return h.pJ();
    }
    new g();
    f localf3 = new f();
    localf3.cdN = Camera.open();
    localf3.cdK = 0;
    return localf3;
  }

  public static List a(Camera.Parameters paramParameters)
  {
    if (Build.VERSION.SDK_INT >= 5)
    {
      new j();
      return paramParameters.getSupportedPreviewSizes();
    }
    return null;
  }

  @TargetApi(9)
  public static int getNumberOfCameras()
  {
    if ((s.ceK.cdx) && (s.ceK.cdE))
    {
      new k();
      return k.getNumberOfCameras();
    }
    if (Build.VERSION.SDK_INT >= 9)
    {
      new j();
      return Camera.getNumberOfCameras();
    }
    return -1;
  }

  public static boolean pI()
  {
    if (s.ceK.cdF == 1);
    while (((Build.VERSION.SDK_INT == 9) && (Build.MODEL.equals("M9"))) || ((Build.VERSION.SDK_INT == 10) && (Build.MODEL.equals("GT-S5360"))) || (Build.VERSION.SDK_INT < 8))
      return true;
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.c.d
 * JD-Core Version:    0.6.2
 */