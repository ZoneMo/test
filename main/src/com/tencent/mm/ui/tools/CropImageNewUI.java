package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Process;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tencent.mm.platformtools.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.h;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.ej;
import com.tencent.mm.ui.bt;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import junit.framework.Assert;

public class CropImageNewUI extends MMActivity
{
  private String filePath;
  private final int hhM = 1;
  private final int hhN = 0;
  private int hhO;
  private int hhP = 0;
  private FilterImageView hhQ;
  private LinearLayout hhR;
  private CropImageView hhS;
  private ImageView hhT;
  private View hhU;
  private int hhV = 0;
  private boolean hhW = false;
  private boolean hhX = false;
  private boolean hhY = false;

  private static boolean a(Bitmap paramBitmap, String paramString, boolean paramBoolean)
  {
    if ((paramString != null) && (!paramString.equals("")))
      try
      {
        h.a(paramBitmap, 100, Bitmap.CompressFormat.PNG, paramString, paramBoolean);
        return true;
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.CropImageUI", "saveBitmapToImage failed:" + localException.toString());
      }
    return false;
  }

  private static float[][] a(Matrix paramMatrix)
  {
    int[] arrayOfInt = { 3, 3 };
    float[][] arrayOfFloat = (float[][])Array.newInstance(Float.TYPE, arrayOfInt);
    float[] arrayOfFloat1 = new float[9];
    paramMatrix.getValues(arrayOfFloat1);
    for (int i = 0; i < 3; i++)
      for (int j = 0; j < 3; j++)
        arrayOfFloat[i][j] = arrayOfFloat1[(j + i * 3)];
    return arrayOfFloat;
  }

  private int[] aMS()
  {
    Rect localRect = new Rect();
    getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
    int i = localRect.top;
    aa.e("MicroMsg.CropImageUI", "window TitleBar.h:" + i);
    if (i == 0);
    while (true)
    {
      int i3;
      try
      {
        Class localClass = Class.forName("com.android.internal.R$dimen");
        Object localObject = localClass.newInstance();
        int i5 = Integer.parseInt(localClass.getField("status_bar_height").get(localObject).toString());
        i = getResources().getDimensionPixelSize(i5);
        aa.e("MicroMsg.CropImageUI", "sbar:" + i);
        j = i;
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        ((WindowManager)getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
        int k = (int)(67.0F * localDisplayMetrics.density / 1.5D);
        int m = Math.min(this.hhU.getWidth(), this.hhU.getHeight());
        int n = Math.max(this.hhU.getWidth(), this.hhU.getHeight());
        int i1 = n - k * 2;
        int i2 = k + (n + j);
        i3 = m - k * 2 - j;
        if (this.hhV != 0)
          break label289;
        m += j + k * 2;
        i4 = i3 + k;
        return new int[] { m, i1, i4, i2 };
      }
      catch (Exception localException)
      {
      }
      int j = i;
      continue;
      label289: int i4 = i3;
    }
  }

  private void b(Runnable paramRunnable1, Runnable paramRunnable2)
  {
    this.hhQ = ((FilterImageView)findViewById(2131362472));
    l.J(this.hhQ);
    this.hhQ.t(paramRunnable1);
    this.hhQ.u(paramRunnable2);
  }

  private Bitmap bn(int paramInt1, int paramInt2)
  {
    Object localObject = h.a(this.filePath, paramInt2, paramInt1, true);
    if (this.hhV != 0)
    {
      Matrix localMatrix = new Matrix();
      localMatrix.reset();
      localMatrix.setRotate(this.hhV, ((Bitmap)localObject).getWidth() / 2, ((Bitmap)localObject).getHeight() / 2);
      Bitmap localBitmap = Bitmap.createBitmap((Bitmap)localObject, 0, 0, ((Bitmap)localObject).getWidth(), ((Bitmap)localObject).getHeight(), localMatrix, true);
      if (localObject != localBitmap)
        ((Bitmap)localObject).recycle();
      localObject = localBitmap;
    }
    aa.d("MicroMsg.CropImageUI", "getcrop degree:" + this.hhV);
    return localObject;
  }

  protected final void FR()
  {
    vT("");
    this.hhR = ((LinearLayout)findViewById(2131362465));
    this.hhT = ((ImageView)findViewById(2131362461));
    l.J(this.hhT);
    this.hhU = findViewById(2131362460);
    this.hhO = getIntent().getIntExtra("CropImageMode", 0);
    boolean bool1;
    boolean bool2;
    boolean bool3;
    label364: ax localax;
    if (this.hhO != 0)
    {
      bool1 = true;
      Assert.assertTrue("the image mode must be set", bool1);
      bool2 = getIntent().getBooleanExtra("CropImage_Filter", false);
      bool3 = getIntent().getBooleanExtra("CropImage_DirectlyIntoFilter", false);
      if (bool2)
        b(new be(this), new bf(this));
      this.hhY = false;
      this.hhS = ((CropImageView)findViewById(2131362464));
      l.J(this.hhS);
      this.hhS.post(new ah(this));
      this.hhS.a(new as(this));
      ((Button)findViewById(2131362467)).setOnClickListener(new ak(this));
      Button localButton1 = (Button)findViewById(2131362469);
      localButton1.setOnClickListener(new al(this));
      Button localButton2 = (Button)findViewById(2131362468);
      localButton2.setOnClickListener(new am(this));
      com.tencent.mm.sdk.platformtools.ay localay1 = new com.tencent.mm.sdk.platformtools.ay(new an(this), true);
      com.tencent.mm.sdk.platformtools.ay localay2 = new com.tencent.mm.sdk.platformtools.ay(new ao(this), true);
      localButton1.setOnTouchListener(new ap(this, localay1));
      localButton2.setOnTouchListener(new aq(this, localay2));
      switch (this.hhO)
      {
      case 3:
      case 4:
      default:
        aa.d("MicroMsg.CropImageUI", "mode is  " + this.hhO);
        localax = new ax(this, bool2, bool3);
        if (this.hhO == 5)
          a(0, 2130838841, localax);
        break;
      case 1:
      case 2:
      case 5:
      }
    }
    while (true)
    {
      if ((bool2) && (bool3))
        a(getString(2131166706), localax, bt.gnO);
      a(new az(this));
      if (this.hhO == 6)
      {
        findViewById(2131362470).setVisibility(8);
        a(getString(2131166696), new ba(this), bt.gnO);
      }
      return;
      bool1 = false;
      break;
      b(new ai(this), new aj(this));
      this.hhQ.aMU();
      this.hhQ.aNf();
      this.hhQ.aNi();
      break label364;
      this.hhS.aMV();
      findViewById(2131362466).setVisibility(8);
      findViewById(2131362470).setVisibility(8);
      break label364;
      int i = getIntent().getIntExtra("CropImage_CompressType", 1);
      boolean bool4 = getIntent().getBooleanExtra("CropImage_BHasHD", false);
      if ((i != 1) && (bool4))
      {
        findViewById(2131362470).setVisibility(0);
        Button localButton4 = (Button)findViewById(2131362471);
        localButton4.setBackgroundResource(2130837783);
        localButton4.setPadding(25, 8, 25, 8);
        localButton4.setOnClickListener(new ar(this));
        break label364;
      }
      findViewById(2131362470).setVisibility(8);
      break label364;
      if (this.hhO == 4)
      {
        a(0, 2130838841, localax);
        findViewById(2131362470).setVisibility(0);
        Button localButton3 = (Button)findViewById(2131362471);
        localButton3.setText(2131166706);
        localButton3.setOnClickListener(new ay(this));
      }
      else
      {
        a(getString(2131166696), localax, bt.gnO);
      }
    }
  }

  protected final int Iw()
  {
    return -1;
  }

  public final void dc(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ej.a(this, paramBoolean, new Intent().putExtra("classname", getClass().getName()).putExtra("main_process", false));
      return;
    }
    super.dc(paramBoolean);
  }

  protected final int getLayoutId()
  {
    return 2130903242;
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    aa.d("MicroMsg.CropImageUI", "onConfigurationChanged, config.orientation = " + paramConfiguration.orientation);
    if ((paramConfiguration.orientation == 1) || (paramConfiguration.orientation == 2))
    {
      aa.v("MicroMsg.CropImageUI", "onConfigurationChanged");
      this.hhS.post(new bd(this));
    }
    super.onConfigurationChanged(paramConfiguration);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  public void onDestroy()
  {
    if (this.hhS != null)
      this.hhS.onDestroy();
    if (this.hhQ != null)
      this.hhQ.onDestroy();
    super.onDestroy();
    Process.killProcess(Process.myPid());
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    FR();
  }

  public void onResume()
  {
    super.onResume();
    setRequestedOrientation(1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.CropImageNewUI
 * JD-Core Version:    0.6.2
 */