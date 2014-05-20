package com.tencent.mm.plugin.scanner.b;

import android.app.Activity;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.Size;
import android.os.Build.VERSION;
import android.view.Display;
import android.view.SurfaceHolder;
import android.view.WindowManager;
import com.tencent.mm.compatible.c.d;
import com.tencent.mm.compatible.c.f;
import com.tencent.mm.compatible.c.m;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public final class h
{
  private static final Pattern egh = Pattern.compile(",");
  private Activity bOt;
  private Camera cdN;
  private Point ebQ = null;
  private boolean egi = false;
  private Point egj = null;
  private boolean egk;
  private Rect egl;

  public h(Activity paramActivity)
  {
    this.bOt = paramActivity;
    this.ebQ = h(paramActivity);
  }

  private static Point a(Camera.Parameters paramParameters, Point paramPoint)
  {
    ArrayList localArrayList = new ArrayList(paramParameters.getSupportedPreviewSizes());
    Collections.sort(localArrayList, new i());
    Object localObject1 = null;
    float f1 = paramPoint.x / paramPoint.y;
    int i = paramPoint.x * paramPoint.y;
    float f2 = (1.0F / 1.0F);
    Iterator localIterator = localArrayList.iterator();
    int j;
    int k;
    label144: label215: label222: label229: float f3;
    Object localObject2;
    float f4;
    while (localIterator.hasNext())
    {
      Camera.Size localSize2 = (Camera.Size)localIterator.next();
      j = localSize2.width;
      k = localSize2.height;
      int m = j * k;
      if ((m >= 150400) && (m <= 921600) && (m <= i))
      {
        int n;
        int i1;
        if (j > k)
        {
          n = 1;
          if (n == 0)
            break label215;
          i1 = k;
          if (n == 0)
            break label222;
        }
        for (int i2 = j; ; i2 = k)
        {
          if ((i1 != paramPoint.x) || (i2 != paramPoint.y))
            break label229;
          Point localPoint = new Point(j, k);
          aa.i("MicroMsg.scanner.ScanCamera", "Found preview size exactly matching screen size: " + localPoint);
          return localPoint;
          n = 0;
          break;
          i1 = j;
          break label144;
        }
        f3 = Math.abs(i1 / i2 - f1);
        if (f3 >= f2)
          break label402;
        localObject2 = new Point(j, k);
        f4 = f3;
      }
    }
    while (true)
    {
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = Float.valueOf(f4);
      arrayOfObject[1] = Float.valueOf(f3);
      arrayOfObject[2] = Integer.valueOf(j);
      arrayOfObject[3] = Integer.valueOf(k);
      aa.e("MicroMsg.scanner.ScanCamera", "diff:[%s] newdiff:[%s] w:[%s] h:[%s]", arrayOfObject);
      localObject1 = localObject2;
      f2 = f4;
      break;
      if (localObject1 == null)
      {
        Camera.Size localSize1 = paramParameters.getPreviewSize();
        localObject1 = new Point(localSize1.width, localSize1.height);
        aa.i("MicroMsg.scanner.ScanCamera", "No suitable preview sizes, using default: " + localObject1);
      }
      aa.i("MicroMsg.scanner.ScanCamera", "Found best approximate preview size: " + localObject1);
      return localObject1;
      label402: f4 = f2;
      localObject2 = localObject1;
    }
  }

  private static int b(CharSequence paramCharSequence, int paramInt)
  {
    String[] arrayOfString = egh.split(paramCharSequence);
    int i = arrayOfString.length;
    int j = 0;
    int k = 0;
    String str;
    if (j < i)
      str = arrayOfString[j].trim();
    while (true)
    {
      try
      {
        double d = Double.parseDouble(str);
        m = (int)(10.0D * d);
        if (Math.abs(paramInt - d) < Math.abs(paramInt - k))
        {
          j++;
          k = m;
          break;
          return k;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        return paramInt;
      }
      int m = k;
    }
  }

  public static Point h(Activity paramActivity)
  {
    Display localDisplay = ((WindowManager)paramActivity.getSystemService("window")).getDefaultDisplay();
    return new Point(localDisplay.getWidth(), localDisplay.getHeight());
  }

  public final Rect a(Rect paramRect, boolean paramBoolean)
  {
    if ((this.egl == null) || (paramBoolean))
    {
      this.egl = new Rect();
      if (!this.egk)
        break label252;
      aa.i("MicroMsg.scanner.ScanCamera", ", needRotate = " + this.egk);
      this.egl.top = (paramRect.left * this.egj.y / this.ebQ.x);
      this.egl.bottom = (paramRect.right * this.egj.y / this.ebQ.x);
      this.egl.left = (paramRect.top * this.egj.x / this.ebQ.y);
      this.egl.right = (paramRect.bottom * this.egj.x / this.ebQ.y);
      if (this.egl.bottom > this.egj.y)
        this.egl.bottom = this.egj.y;
      if (this.egl.right > this.egj.x)
        this.egl.right = this.egj.x;
    }
    while (true)
    {
      aa.d("MicroMsg.scanner.ScanCamera", "ScanRect:" + this.egl);
      return this.egl;
      label252: this.egl.left = (paramRect.left * this.egj.x / this.ebQ.x);
      this.egl.right = (paramRect.right * this.egj.x / this.ebQ.x);
      this.egl.top = (paramRect.top * this.egj.y / this.ebQ.y);
      this.egl.bottom = (paramRect.bottom * this.egj.y / this.ebQ.y);
      if (this.egl.bottom > this.egj.y)
        this.egl.bottom = this.egj.y;
      if (this.egl.right > this.egj.x)
        this.egl.right = this.egj.x;
    }
  }

  public final void a(Camera.PreviewCallback paramPreviewCallback)
  {
    if ((this.cdN != null) && (this.egi));
    try
    {
      this.cdN.setOneShotPreviewCallback(paramPreviewCallback);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      aa.w("MicroMsg.scanner.ScanCamera", "takeOneShot() " + localRuntimeException.getMessage());
    }
  }

  public final boolean aaM()
  {
    return this.egi;
  }

  public final boolean aaN()
  {
    return this.egk;
  }

  public final Point aaO()
  {
    return this.egj;
  }

  public final float aaP()
  {
    if (this.egk)
      return this.ebQ.x / this.egj.y;
    return this.ebQ.x / this.egj.x;
  }

  public final float aaQ()
  {
    if (this.egk)
      return this.ebQ.y / this.egj.x;
    return this.ebQ.y / this.egj.y;
  }

  public final void autoFocus(Camera.AutoFocusCallback paramAutoFocusCallback)
  {
    if ((this.cdN != null) && (this.egi));
    try
    {
      this.cdN.autoFocus(paramAutoFocusCallback);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      aa.w("MicroMsg.scanner.ScanCamera", "autoFocus() " + localRuntimeException.getMessage());
    }
  }

  public final Rect b(Rect paramRect)
  {
    return a(paramRect, false);
  }

  public final void b(SurfaceHolder paramSurfaceHolder)
  {
    long l = cj.FE();
    if ((this.cdN != null) && (!this.egi))
    {
      if (paramSurfaceHolder != null)
        this.cdN.setPreviewDisplay(paramSurfaceHolder);
      this.cdN.startPreview();
      this.egi = true;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(cj.O(l));
      aa.e("MicroMsg.scanner.ScanCamera", "startPreview done costTime=[%s]", arrayOfObject);
    }
  }

  public final void c(SurfaceHolder paramSurfaceHolder)
  {
    int i = 15;
    if (this.egi)
    {
      aa.w("MicroMsg.scanner.ScanCamera", "in open(), previewing");
      release();
    }
    if (Build.VERSION.SDK_INT < 9);
    boolean bool;
    for (int j = 0; ; j = 0)
    {
      long l = cj.FE();
      f localf = d.a(this.bOt, j);
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(j);
      arrayOfObject1[1] = Long.valueOf(cj.O(l));
      aa.e("MicroMsg.scanner.ScanCamera", "openCamera done, cameraId=[%s] costTime=[%s]", arrayOfObject1);
      if (localf.cdK % 180 == 0)
        break label265;
      bool = true;
      label98: this.egk = bool;
      this.cdN = localf.cdN;
      if (this.cdN != null)
        break label271;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Boolean.valueOf(this.egk);
      aa.b("MicroMsg.scanner.ScanCamera", "in open(), camera == null, bNeedRotate=[%s]", arrayOfObject3);
      throw new IOException();
      if (s.ceN.cel != 1)
        break;
    }
    int i6 = Camera.getNumberOfCameras();
    Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
    j = 0;
    label186: if (j < i6)
    {
      Camera.getCameraInfo(j, localCameraInfo);
      if (localCameraInfo.facing == 0)
      {
        Object[] arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = Integer.valueOf(j);
        aa.e("MicroMsg.CameraUtil", "tigercam get bid %d", arrayOfObject5);
      }
    }
    while (true)
    {
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Integer.valueOf(j);
      aa.e("MicroMsg.CameraUtil", "tigercam getBackCameraId %d", arrayOfObject4);
      break;
      j++;
      break label186;
      label265: bool = false;
      break label98;
      label271: this.cdN.setPreviewDisplay(paramSurfaceHolder);
      Camera.Parameters localParameters = this.cdN.getParameters();
      Point localPoint1 = this.ebQ;
      String str1 = localParameters.get("preview-size-values");
      if (str1 == null);
      for (String str2 = localParameters.get("preview-size-value"); ; str2 = str1)
      {
        Point localPoint2 = null;
        if (str2 != null)
        {
          aa.d("MicroMsg.scanner.ScanCamera", "preview-size-values parameter: " + str2);
          localPoint2 = a(localParameters, localPoint1);
        }
        if (localPoint2 == null)
          localPoint2 = new Point(localPoint1.x >> 3 << 3, localPoint1.y >> 3 << 3);
        this.egj = localPoint2;
        aa.d("MicroMsg.scanner.ScanCamera", "getCameraResolution: " + this.ebQ + " camera:" + this.egj);
        localParameters.setPreviewSize(this.egj.x, this.egj.y);
        String str3 = localParameters.get("zoom-supported");
        String str4;
        if ((str3 == null) || (Boolean.parseBoolean(str3)))
        {
          str4 = localParameters.get("max-zoom");
          if (str4 == null);
        }
        try
        {
          double d = Double.parseDouble(str4);
          i5 = (int)(d * 10.0D);
          if (i > i5)
          {
            i = i5;
            str5 = localParameters.get("taking-picture-zoom-max");
            if (str5 == null);
          }
        }
        catch (NumberFormatException localNumberFormatException2)
        {
          while (true)
          {
            try
            {
              int i4 = Integer.parseInt(str5);
              if (i > i4)
                i = i4;
              str6 = localParameters.get("mot-zoom-values");
              if (str6 != null)
                i = b(str6, i);
              str7 = localParameters.get("mot-zoom-step");
              if (str7 == null);
            }
            catch (NumberFormatException localNumberFormatException2)
            {
              try
              {
                String str5;
                String str6;
                String str7;
                int i2 = (int)(10.0D * Double.parseDouble(str7.trim()));
                if (i2 > 1)
                {
                  int i3 = i % i2;
                  i -= i3;
                }
                if ((str4 != null) || (str6 != null))
                  localParameters.set("zoom", String.valueOf(i / 10.0D));
                if (str5 != null)
                  localParameters.set("taking-picture-zoom", i);
                List localList = localParameters.getSupportedPreviewFormats();
                Iterator localIterator = localList.iterator();
                k = 0;
                if (localIterator.hasNext())
                {
                  int n = ((Integer)localIterator.next()).intValue();
                  aa.d("MicroMsg.scanner.ScanCamera", "supportedPreviewFormat: " + n);
                  if (n == 17)
                  {
                    m = 1;
                    if (m == 0)
                      continue;
                    localParameters.setPreviewFormat(17);
                    this.cdN.setParameters(localParameters);
                    return;
                    localNumberFormatException3 = localNumberFormatException3;
                    aa.w("MicroMsg.scanner.ScanCamera", "Bad max-zoom: " + str4);
                    continue;
                    localNumberFormatException2 = localNumberFormatException2;
                    aa.w("MicroMsg.scanner.ScanCamera", "Bad taking-picture-zoom-max: " + str5);
                    continue;
                  }
                  if (n == 842094169)
                  {
                    i1 = 1;
                    k = i1;
                    continue;
                    if (k != 0)
                    {
                      aa.e("MicroMsg.scanner.ScanCamera", "Preview not support PixelFormat.YCbCr_420_SP, but hasYU12");
                      localParameters.setPreviewFormat(842094169);
                      continue;
                    }
                    Object[] arrayOfObject2 = new Object[1];
                    arrayOfObject2[0] = localList.get(0);
                    aa.b("MicroMsg.scanner.ScanCamera", "Preview not support PixelFormat.YCbCr_420_SP. Use format: %s", arrayOfObject2);
                    localParameters.setPreviewFormat(((Integer)localList.get(0)).intValue());
                    continue;
                  }
                }
              }
              catch (NumberFormatException localNumberFormatException1)
              {
                int k;
                continue;
                int i1 = k;
                continue;
                int m = 0;
                continue;
              }
            }
            int i5 = i;
          }
        }
      }
      j = 0;
    }
  }

  public final boolean isOpen()
  {
    return this.cdN != null;
  }

  public final void release()
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Boolean.valueOf(this.egi);
    aa.e("MicroMsg.scanner.ScanCamera", "release(), previewing = [%s]", arrayOfObject1);
    if (this.cdN != null)
    {
      long l1 = cj.FE();
      if (this.egi)
      {
        this.cdN.setPreviewCallback(null);
        this.cdN.stopPreview();
        this.egi = false;
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Long.valueOf(cj.O(l1));
        aa.e("MicroMsg.scanner.ScanCamera", "stopPreview costTime=[%s]", arrayOfObject3);
      }
      long l2 = cj.FE();
      this.cdN.release();
      this.cdN = null;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(cj.O(l2));
      aa.e("MicroMsg.scanner.ScanCamera", "camera.release() costTime=[%s]", arrayOfObject2);
    }
  }

  public final void stopPreview()
  {
    if (this.cdN != null)
    {
      this.cdN.stopPreview();
      this.egi = false;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.b.h
 * JD-Core Version:    0.6.2
 */