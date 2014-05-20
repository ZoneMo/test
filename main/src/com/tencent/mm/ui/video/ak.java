package com.tencent.mm.ui.video;

import android.annotation.TargetApi;
import android.app.Activity;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.os.Build.VERSION;
import android.view.SurfaceHolder;
import com.tencent.mm.compatible.c.b;
import com.tencent.mm.compatible.c.d;
import com.tencent.mm.compatible.c.f;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ak
{
  private static int htv = 0;
  private Camera cdN = null;
  private SurfaceHolder eNF = null;
  private boolean htt = false;
  private a htu;
  f htw;
  private List htx = new ArrayList();

  public static int aPj()
  {
    return htv;
  }

  @TargetApi(9)
  private static void b(Camera.Parameters paramParameters)
  {
    if (s.ceK.cdC > 0);
    List localList;
    do
    {
      do
        return;
      while (Build.VERSION.SDK_INT < 9);
      localList = paramParameters.getSupportedPreviewFpsRange();
    }
    while ((localList == null) || (localList.size() == 0));
    int i = localList.size();
    int j = 0;
    int k = 2147483647;
    int m = 2147483647;
    label53: int i2;
    int n;
    if (j < i)
    {
      int[] arrayOfInt = (int[])localList.get(j);
      if ((arrayOfInt == null) || (arrayOfInt.length <= 1))
        break label238;
      i2 = arrayOfInt[0];
      n = arrayOfInt[1];
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(j);
      arrayOfObject2[1] = Integer.valueOf(i2);
      arrayOfObject2[2] = Integer.valueOf(n);
      aa.e("MicroMsg.YuvReocrder", "dkfps %d:[%d %d]", arrayOfObject2);
      if ((i2 < 0) || (n < i2) || (i2 >= m) || (n >= k))
        break label238;
    }
    for (int i1 = i2; ; i1 = m)
    {
      j++;
      m = i1;
      k = n;
      break label53;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(m);
      arrayOfObject1[1] = Integer.valueOf(k);
      aa.e("MicroMsg.YuvReocrder", "dkfps get fit  [%d %d]", arrayOfObject1);
      if ((m == 2147483647) || (k == 2147483647))
        break;
      try
      {
        paramParameters.setPreviewFpsRange(m, k);
        return;
      }
      catch (Exception localException)
      {
        return;
      }
      label238: n = k;
    }
  }

  private void c(Camera.Parameters paramParameters)
  {
    List localList = d.a(paramParameters);
    if (localList != null)
    {
      int i = 0;
      int j = 0;
      int k = 0;
      int m = 0;
      while (i < localList.size())
      {
        int n = ((Camera.Size)localList.get(i)).height;
        int i1 = ((Camera.Size)localList.get(i)).width;
        aa.d("MicroMsg.YuvReocrder", "supp w:" + i1 + " h:" + n);
        int i2 = n * i1;
        if (((this.htu.cdK != 0) && (this.htu.cdK != 180)) || (((n >= this.htu.hsq) && (i1 >= this.htu.hsr)) || (((this.htu.cdK == 90) || (this.htu.cdK == 270)) && (i1 >= this.htu.hsq) && (n >= this.htu.hsr) && (i2 >= m))))
        {
          j = n;
          k = i1;
          m = i2;
        }
        i++;
      }
      paramParameters.setPreviewSize(k, j);
      aa.d("MicroMsg.YuvReocrder", "max w:" + k + " h:" + j);
    }
  }

  public final int a(Activity paramActivity, a parama, boolean paramBoolean)
  {
    if (parama == null)
      return 0 - j.qe();
    this.htu = parama;
    if ((paramBoolean) || (this.cdN == null))
    {
      aPk();
      if (paramBoolean)
        htv = 0x1 & (0xFFFFFFFF ^ htv);
      this.htw = d.a(paramActivity, htv);
      if (this.htw == null)
      {
        aa.e("MicroMsg.YuvReocrder", "start camera FAILED!");
        return 0 - j.qe();
      }
      this.cdN = this.htw.cdN;
      this.htu.cdK = this.htw.cdK;
      if (this.cdN == null)
      {
        aa.e("MicroMsg.YuvReocrder", "start camera FAILED!");
        return 0 - j.qe();
      }
    }
    return 0;
  }

  public final void aPk()
  {
    if (this.cdN != null)
    {
      aa.d("MicroMsg.YuvReocrder", "release camera");
      this.cdN.stopPreview();
      this.cdN.release();
      this.cdN = null;
      this.htt = false;
    }
  }

  public final Camera aPl()
  {
    return this.cdN;
  }

  public final int d(SurfaceHolder paramSurfaceHolder)
  {
    if (this.htt)
      return 0;
    if (paramSurfaceHolder == null)
      return 0 - j.qe();
    while (true)
    {
      int j;
      try
      {
        this.eNF = paramSurfaceHolder;
        Camera.Parameters localParameters = this.cdN.getParameters();
        a locala = this.htu;
        i = 2147483647;
        List localList1 = d.a(localParameters);
        if (localList1 != null)
        {
          j = 0;
          if (j < localList1.size())
          {
            int k = ((Camera.Size)localList1.get(j)).height;
            int m = ((Camera.Size)localList1.get(j)).width;
            aa.d("MicroMsg.YuvReocrder", "supp w:" + m + " h:" + k);
            n = k * m;
            if (((locala.cdK != 0) && (locala.cdK != 180)) || (((k >= locala.hsq) && (m >= locala.hsr)) || (((locala.cdK == 90) || (locala.cdK == 270)) && (m >= locala.hsq) && (k >= locala.hsr) && (n < i))))
            {
              locala.hsp = m;
              locala.hso = k;
              break label450;
            }
          }
          else
          {
            localParameters.setPreviewSize(locala.hsp, locala.hso);
            aa.d("MicroMsg.YuvReocrder", " rotate:" + locala.cdK + " w:" + localParameters.getPreviewSize().width + " h:" + localParameters.getPreviewSize().height);
            b(localParameters);
            List localList2 = localParameters.getSupportedPreviewFrameRates();
            this.htx.clear();
            this.htx.addAll(localList2);
            localParameters.setPreviewFormat(17);
            c(localParameters);
            this.cdN.setParameters(localParameters);
            this.cdN.setPreviewDisplay(paramSurfaceHolder);
            this.cdN.startPreview();
            this.htt = true;
            return 0;
          }
        }
        else
        {
          Camera.Size localSize = localParameters.getPreviewSize();
          locala.hso = localSize.height;
          locala.hsp = localSize.width;
          continue;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.YuvReocrder", "Start preview FAILED :" + localException.getMessage());
        return 0 - j.qe();
      }
      int n = i;
      label450: j++;
      int i = n;
    }
  }

  public final int oB(int paramInt)
  {
    if ((this.htx != null) && (this.htx.size() > 0))
    {
      Iterator localIterator = this.htx.iterator();
      while (localIterator.hasNext())
      {
        Integer localInteger = (Integer)localIterator.next();
        aa.d("MicroMsg.YuvReocrder", "get fr " + localInteger);
        if (localInteger.intValue() > paramInt)
          paramInt = localInteger.intValue();
      }
    }
    return paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.ak
 * JD-Core Version:    0.6.2
 */