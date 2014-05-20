package com.tencent.mm.ui.video;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.hardware.Camera;
import android.media.MediaRecorder;
import android.media.ThumbnailUtils;
import android.view.SurfaceHolder;
import com.tencent.mm.compatible.c.m;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.compatible.g.g;
import com.tencent.mm.h;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.e;

public final class b
{
  private Context context;
  private int fileSize;
  private String filename;
  private a hsB;
  private MediaRecorder hsC;
  private ak hsD;
  private int hsE = 0;
  private final int hsF = 5;

  @TargetApi(9)
  private void setOrientationHint(int paramInt)
  {
    com.tencent.mm.compatible.a.a.a(9, new c(this, paramInt));
  }

  public final int DO()
  {
    return this.hsB.cAX;
  }

  public final int a(Activity paramActivity, boolean paramBoolean)
  {
    this.context = paramActivity;
    int i = this.hsD.a(paramActivity, this.hsB, paramBoolean);
    if (i != 0)
      return i;
    return 0;
  }

  public final int a(boolean paramBoolean, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    int i = 1;
    a locala1 = new a();
    locala1.te = 10;
    locala1.cdK = 0;
    locala1.hsq = 288;
    locala1.hsr = 224;
    locala1.hso = 288;
    locala1.hsp = 224;
    locala1.hss = i;
    locala1.hst = 4;
    locala1.hsu = "/sdcard/1.yuv";
    locala1.hsy = "/sdcard/1.mp4";
    locala1.hsv = "/sdcard/1.pcm";
    locala1.hsx = "/sdcard/1.x264";
    locala1.hsz = 0;
    locala1.cAX = 0;
    locala1.hsA = 0;
    this.hsB = locala1;
    this.filename = paramString4;
    this.hsB.hsy = paramString2;
    this.hsB.hsw = paramString3;
    this.hsB.hsv = (paramString1 + "temp.pcm");
    this.hsB.hsu = (paramString1 + "temp.yuv");
    this.hsB.hsx = (paramString1 + "temp.vid");
    this.hsB.hsA = com.tencent.mm.compatible.c.d.getNumberOfCameras();
    a locala2 = this.hsB;
    if (paramBoolean);
    while (true)
    {
      locala2.cdK = i;
      this.hsB.cAX = 0;
      this.hsD = new ak();
      return 0;
      i = 0;
    }
  }

  public final int aPe()
  {
    this.hsD.aPk();
    return 0;
  }

  public final Bitmap ci(Context paramContext)
  {
    String str = this.hsB.hsw;
    Bitmap localBitmap1;
    if ((str == null) || (str.length() <= 0))
      localBitmap1 = null;
    Bitmap localBitmap2;
    do
    {
      return localBitmap1;
      localBitmap2 = e.e(str.trim(), com.tencent.mm.an.a.getDensity(paramContext));
      if (localBitmap2 == null)
        break;
      int i = localBitmap2.getWidth();
      int j = localBitmap2.getHeight();
      int k = e.a(paramContext, 224.0F);
      float f = i / k;
      localBitmap1 = Bitmap.createScaledBitmap(localBitmap2, k, (int)(j / f), true);
    }
    while (localBitmap2 == localBitmap1);
    localBitmap2.recycle();
    return localBitmap1;
    return localBitmap2;
  }

  public final void ck(long paramLong)
  {
    if (this.hsC != null);
    try
    {
      this.hsC.stop();
      this.hsC.release();
      this.hsC = null;
      this.hsB.cAX = ((int)(paramLong / 1000L));
      a locala = this.hsB;
      if (this.hsB.cAX > 0)
      {
        i = this.hsB.cAX;
        locala.cAX = i;
        this.hsB.hsz = (this.hsB.cAX * this.hsB.te);
        if ((com.tencent.mm.a.c.as(this.hsB.hsy)) && (!com.tencent.mm.a.c.as(this.hsB.hsw)) && (this.context != null))
        {
          if (!g.bG(8))
            break label281;
          localBitmap = ThumbnailUtils.createVideoThumbnail(this.hsB.hsy, 1);
          if (localBitmap == null)
            break label239;
        }
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        try
        {
          aa.d("MicroMsg.SceneVideo", "saveBitmapToImage " + this.hsB.hsw);
          d.a(localBitmap, Bitmap.CompressFormat.JPEG, this.hsB.hsw);
          if (com.tencent.mm.a.c.as(this.hsB.hsy))
            this.fileSize = com.tencent.mm.a.c.ar(this.hsB.hsy);
          return;
          localException1 = localException1;
          aa.e("MicroMsg.SceneVideo", "video[tiger] video stop failed");
          continue;
          int i = 1;
          continue;
          try
          {
            label239: d.a(BitmapFactory.decodeStream(this.context.getResources().openRawResource(h.adH)), Bitmap.CompressFormat.JPEG, this.hsB.hsw);
          }
          catch (Exception localException2)
          {
          }
          continue;
        }
        catch (Exception localException3)
        {
          continue;
        }
        label281: Bitmap localBitmap = null;
      }
    }
  }

  public final int d(SurfaceHolder paramSurfaceHolder)
  {
    return this.hsD.d(paramSurfaceHolder);
  }

  public final void e(SurfaceHolder paramSurfaceHolder)
  {
    this.hsE = 0;
    int i = this.hsB.te;
    while (true)
    {
      Camera localCamera;
      if (this.hsD != null)
      {
        localCamera = this.hsD.aPl();
        if ((paramSurfaceHolder == null) || (localCamera == null))
          aa.e("MicroMsg.SceneVideo", "holder or cam is null ");
      }
      else
      {
        label44: return;
      }
      int j;
      int k;
      if (s.ceN.cem == -1)
      {
        j = i;
        k = ak.aPj();
      }
      try
      {
        localCamera.unlock();
        this.hsC = new MediaRecorder();
        this.hsC.setCamera(localCamera);
        this.hsC.setAudioSource(5);
        this.hsC.setVideoSource(1);
        this.hsC.setOutputFormat(2);
        this.hsC.setVideoSize(this.hsB.hsp, this.hsB.hso);
        this.hsC.setVideoEncoder(2);
        this.hsC.setAudioEncoder(3);
        this.hsC.setVideoFrameRate(j);
        this.hsC.setOutputFile(this.hsB.hsy);
        this.hsC.setPreviewDisplay(paramSurfaceHolder.getSurface());
        Object[] arrayOfObject2 = new Object[4];
        arrayOfObject2[0] = Integer.valueOf(j);
        arrayOfObject2[1] = Integer.valueOf(k);
        arrayOfObject2[2] = Integer.valueOf(this.hsB.hsp);
        arrayOfObject2[3] = Integer.valueOf(this.hsB.hso);
        aa.e("MicroMsg.SceneVideo", "doStart fps[%s], camid[%s], width[%s], height[%s]", arrayOfObject2);
        if (k == 0)
          if (s.ceN.ceg == -1)
          {
            n = 90;
            setOrientationHint(n);
            try
            {
              this.hsC.prepare();
              this.hsC.start();
              return;
            }
            catch (Exception localException2)
            {
              Object[] arrayOfObject3 = new Object[2];
              arrayOfObject3[0] = localException2.getMessage();
              arrayOfObject3[1] = Integer.valueOf(this.hsE);
              aa.c("MicroMsg.SceneVideo", "exception in mediaRecorder[%s] doStartCount[%s]", arrayOfObject3);
              this.hsE = (1 + this.hsE);
            }
            if (this.hsE >= 5)
              break label44;
            i = this.hsD.oB(i);
            continue;
            j = s.ceN.cem;
          }
      }
      catch (Exception localException1)
      {
        while (true)
        {
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = localException1.getMessage();
          aa.c("MicroMsg.SceneVideo", "exception in cam.unlock() [%s]", arrayOfObject1);
          continue;
          int n = s.ceN.ceg;
        }
      }
    }
    if (s.ceN.ceh == -1);
    for (int m = 270; ; m = s.ceN.ceh)
    {
      setOrientationHint(m);
      break;
    }
  }

  public final String getFileName()
  {
    return this.filename;
  }

  public final int getFileSize()
  {
    return this.fileSize;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.b
 * JD-Core Version:    0.6.2
 */