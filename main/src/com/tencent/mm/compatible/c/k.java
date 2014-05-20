package com.tencent.mm.compatible.c;

import android.annotation.TargetApi;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import com.tencent.mm.sdk.platformtools.aa;

final class k
  implements e
{
  @TargetApi(9)
  public static f bB(int paramInt)
  {
    f localf = new f();
    localf.cdN = null;
    try
    {
      localf.cdN = Camera.open(paramInt);
      localf.cdK = 0;
      aa.d("CameraUtilImplConfig", "DeviceInfo.mCameraInfo.hasVRInfo " + s.ceK.cdx);
      aa.d("CameraUtilImplConfig", "DeviceInfo.mCameraInfo.mVRFaceRotate " + s.ceK.cdy);
      aa.d("CameraUtilImplConfig", "DeviceInfo.mCameraInfo.mVRFaceDisplayOrientation " + s.ceK.cdz);
      aa.d("CameraUtilImplConfig", "DeviceInfo.mCameraInfo.mVRBackRotate " + s.ceK.cdA);
      aa.d("CameraUtilImplConfig", "DeviceInfo.mCameraInfo.mVRBackDisplayOrientation " + s.ceK.cdB);
      if (getNumberOfCameras() > 1)
      {
        try
        {
          Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
          Camera.getCameraInfo(paramInt, localCameraInfo);
          aa.d("CameraUtilImplConfig", "info.facing " + localCameraInfo.facing);
          if (localCameraInfo.facing == 1)
          {
            if ((s.ceK.cdx) && (s.ceK.cdy != -1))
              localf.cdK = s.ceK.cdy;
            if ((!s.ceK.cdx) || (s.ceK.cdz == -1))
              break label399;
            localf.cdN.setDisplayOrientation(s.ceK.cdz);
            return localf;
          }
          if ((s.ceK.cdx) && (s.ceK.cdA != -1))
            localf.cdK = s.ceK.cdA;
          if ((!s.ceK.cdx) || (s.ceK.cdB == -1))
            break label399;
          localf.cdN.setDisplayOrientation(s.ceK.cdB);
          return localf;
        }
        catch (Exception localException2)
        {
          return localf;
        }
      }
      else
      {
        if ((s.ceK.cdx) && (s.ceK.cdA != -1))
          localf.cdK = s.ceK.cdA;
        if ((s.ceK.cdx) && (s.ceK.cdB != -1))
          localf.cdN.setDisplayOrientation(s.ceK.cdB);
      }
      label399: return localf;
    }
    catch (Exception localException1)
    {
    }
    return null;
  }

  public static int getNumberOfCameras()
  {
    int i;
    if ((s.ceK.cdE) && (s.ceK.cdD != -1))
    {
      i = s.ceK.cdD;
      aa.d("CameraUtilImplConfig", "mVRCameraNum " + i);
    }
    do
    {
      return i;
      i = d.getNumberOfCameras();
      aa.d("CameraUtilImplConfig", "getNumberOfCameras " + i);
    }
    while (i > 1);
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.c.k
 * JD-Core Version:    0.6.2
 */