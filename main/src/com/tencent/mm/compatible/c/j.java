package com.tencent.mm.compatible.c;

import android.annotation.TargetApi;
import android.app.Activity;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.view.Display;
import android.view.WindowManager;

final class j
  implements e
{
  @TargetApi(9)
  public static f a(Activity paramActivity, int paramInt)
  {
    f localf = new f();
    localf.cdN = null;
    while (true)
    {
      Camera.CameraInfo localCameraInfo;
      try
      {
        localf.cdN = Camera.open(paramInt);
        localCameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(paramInt, localCameraInfo);
        int i = paramActivity.getWindowManager().getDefaultDisplay().getRotation();
        j = 0;
        switch (i)
        {
        case 0:
        default:
          if (localCameraInfo.facing != 1)
            break label158;
          k = (360 - localCameraInfo.orientation % 360) % 360;
          localf.cdN.setDisplayOrientation(k);
          localf.cdK = localCameraInfo.orientation;
          return localf;
        case 1:
        case 2:
        case 3:
        }
      }
      catch (Exception localException)
      {
        return null;
      }
      int j = 90;
      continue;
      j = 180;
      continue;
      j = 270;
      continue;
      label158: int k = (360 + (localCameraInfo.orientation - j)) % 360;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.c.j
 * JD-Core Version:    0.6.2
 */