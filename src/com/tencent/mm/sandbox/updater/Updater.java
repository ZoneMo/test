package com.tencent.mm.sandbox.updater;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.pluginsdk.ad;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.sandbox.a.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.by;
import com.tencent.mm.ui.base.ch;

public class Updater extends LinearLayout
  implements m
{
  private ad cRl;
  private boolean ePt;
  private int gaO;
  private ch gbK = null;
  private boolean gbL = false;

  public Updater(Context paramContext)
  {
    super(paramContext);
  }

  public Updater(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public static Updater a(Context paramContext, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    if (paramContext == null)
      return null;
    if (((paramContext instanceof Activity)) && ((((Activity)paramContext).isFinishing()) || (((Activity)paramContext).getWindow() == null)))
    {
      aa.e("MicroMsg.Updater", "showWithProgress, context isFinishing");
      return null;
    }
    al.getContext().getSharedPreferences("system_config_prefs", 0).edit().putLong("recomended_update_ignore", cj.FC()).commit();
    ((NotificationManager)paramContext.getSystemService("notification")).cancel(34);
    aa.d("MicroMsg.Updater", "showWithProgress ");
    Updater localUpdater = (Updater)View.inflate(paramContext, k.bbc, null);
    localUpdater.onStart();
    ch localch = ch.a(paramContext, paramContext.getString(n.bDv), true, 0, null);
    localch.setCancelable(true);
    localch.setOnCancelListener(new ag(paramContext, localUpdater, paramOnCancelListener));
    try
    {
      localUpdater.gbK = localch;
      localUpdater.gbK.show();
      localUpdater.ePt = true;
      return localUpdater;
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localException.getMessage();
      aa.b("MicroMsg.Updater", "exception in showWithProgress, ", arrayOfObject);
    }
    return null;
  }

  public static Updater b(Context paramContext, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    al.getContext().getSharedPreferences("system_config_prefs", 0).edit().putLong("recomended_update_ignore", cj.FC()).commit();
    ((NotificationManager)paramContext.getSystemService("notification")).cancel(34);
    aa.d("MicroMsg.Updater", "show update dialog");
    Updater localUpdater = (Updater)View.inflate(paramContext, k.bbc, null);
    localUpdater.onStart();
    ch localch = ch.a(paramContext, "", true, 0, null);
    localch.setCancelable(true);
    localch.setOnCancelListener(new ah(paramContext, localUpdater, paramOnCancelListener));
    localUpdater.gbK = localch;
    localUpdater.ePt = false;
    return localUpdater;
  }

  private void cancel()
  {
    be.uA().b(11, this);
  }

  public static void ly(int paramInt)
  {
    if (!be.se())
      return;
    aa.d("MicroMsg.Updater", "reportUpdateStat : opCode = " + paramInt);
    be.uz().st().a(new by(paramInt));
  }

  private void onStart()
  {
    be.uA().a(11, this);
    this.cRl = h.b(getContext(), null);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      aa.d("MicroMsg.Updater", "isShow " + this.ePt);
      if (!this.ePt)
        this.gbK.show();
      this.gbL = true;
      this.gbK.cancel();
      a locala = (a)paramx;
      be.uA().d(new cb(new ai(this, locala)));
      return;
    }
    this.gbK.aHi();
    TextView localTextView = (TextView)this.gbK.findViewById(i.aBA);
    if ((paramInt1 == 4) && (paramInt2 == -18))
      if (localTextView != null)
        localTextView.setText(n.bDz);
    while (true)
    {
      cancel();
      return;
      if (localTextView != null)
      {
        localTextView.setText(n.bDr);
        this.cRl.e(localTextView);
      }
    }
  }

  public final void lA(int paramInt)
  {
    aa.i("MicroMsg.Updater", "begin update routine, type=" + paramInt);
    this.gaO = paramInt;
    a locala = new a(paramInt);
    be.uA().d(locala);
  }

  public final void onStop()
  {
    cancel();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.Updater
 * JD-Core Version:    0.6.2
 */