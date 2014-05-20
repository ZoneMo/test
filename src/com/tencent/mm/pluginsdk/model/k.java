package com.tencent.mm.pluginsdk.model;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import com.tencent.mm.m.ab;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.h;
import junit.framework.Assert;

public final class k
  implements m
{
  private String bRt;
  private Context context;
  private ProgressDialog dRP;
  private Runnable fgW = null;
  private Runnable fgX = null;

  public k(Context paramContext, String paramString)
  {
    this.context = paramContext;
    this.bRt = paramString;
    this.dRP = null;
    be.uA().a(157, this);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.ProcessUploadHDHeadImg", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    be.uA().b(157, this);
    if ((this.dRP != null) && (this.dRP.isShowing()) && ((this.context instanceof Activity)) && (!((Activity)this.context).isFinishing()));
    label267: 
    while (true)
    {
      try
      {
        this.dRP.dismiss();
        if ((paramInt1 == 0) && (paramInt2 == 0))
        {
          Toast.makeText(this.context, n.byU, 0).show();
          if (this.fgW != null)
            new Handler(Looper.getMainLooper()).post(this.fgW);
          return;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        aa.e("MicroMsg.ProcessUploadHDHeadImg", "dismiss dialog err" + localIllegalArgumentException.getMessage());
        continue;
        if (this.fgX != null)
          new Handler(Looper.getMainLooper()).post(this.fgX);
        switch (paramInt1)
        {
        default:
        case 4:
        }
      }
      for (int i = 0; ; i = 1)
      {
        if (i != 0)
          break label267;
        Toast.makeText(this.context, n.byT, 0).show();
        return;
        if (paramInt2 != -4)
          break;
        Toast.makeText(this.context, n.bif, 0).show();
      }
    }
  }

  public final boolean a(int paramInt, Runnable paramRunnable)
  {
    boolean bool1;
    Object[] arrayOfObject;
    if ((this.context != null) && (this.bRt != null) && (this.bRt.length() > 0))
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      this.fgW = paramRunnable;
      Context localContext = this.context;
      this.context.getString(n.ber);
      this.dRP = h.a(localContext, this.context.getString(n.byV), true, null);
      ab localab = new ab(paramInt, this.bRt);
      be.uA().d(localab);
      arrayOfObject = new Object[1];
      if (paramRunnable != null)
        break label134;
    }
    label134: for (boolean bool2 = true; ; bool2 = false)
    {
      arrayOfObject[0] = Boolean.valueOf(bool2);
      aa.d("MicroMsg.ProcessUploadHDHeadImg", "post is null ? %B", arrayOfObject);
      return true;
      bool1 = false;
      break;
    }
  }

  public final boolean a(Runnable paramRunnable1, Runnable paramRunnable2)
  {
    boolean bool1;
    Object[] arrayOfObject;
    if ((this.context != null) && (this.bRt != null) && (this.bRt.length() > 0))
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      this.fgW = paramRunnable1;
      this.fgX = paramRunnable2;
      ab localab = new ab(1, this.bRt);
      be.uA().d(localab);
      arrayOfObject = new Object[1];
      if (paramRunnable1 != null)
        break label101;
    }
    label101: for (boolean bool2 = true; ; bool2 = false)
    {
      arrayOfObject[0] = Boolean.valueOf(bool2);
      aa.d("MicroMsg.ProcessUploadHDHeadImg", "post is null ? %B", arrayOfObject);
      return true;
      bool1 = false;
      break;
    }
  }

  public final boolean jY(int paramInt)
  {
    return a(paramInt, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.k
 * JD-Core Version:    0.6.2
 */