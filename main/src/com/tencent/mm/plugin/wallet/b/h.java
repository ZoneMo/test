package com.tencent.mm.plugin.wallet.b;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import com.tencent.mm.plugin.wallet.c;
import com.tencent.mm.plugin.wallet.pay.ui.OrderHandlerUI;
import com.tencent.mm.plugin.wallet.pay.ui.WalletBrandUI;
import com.tencent.mm.plugin.wallet.pay.ui.a;
import com.tencent.mm.sdk.platformtools.aa;

public final class h
{
  private static SparseArray fal = new SparseArray();
  private static a fam;

  public static void a(Activity paramActivity, Class paramClass, Bundle paramBundle, int paramInt, boolean paramBoolean)
  {
    if (paramBundle == null);
    try
    {
      paramBundle = new Bundle();
      paramBundle.putInt("key_support_bankcard", paramInt);
      if (!paramBoolean);
      for (boolean bool = true; ; bool = false)
      {
        paramBundle.putBoolean("key_is_oversea", bool);
        i locali = (i)paramClass.newInstance();
        locali.m(paramBundle);
        locali.a(paramActivity, paramBundle);
        fal.put(paramClass.hashCode(), locali);
        return;
      }
    }
    catch (Exception localException)
    {
    }
  }

  public static void a(Activity paramActivity, Class paramClass, boolean paramBoolean)
  {
    int i = 1;
    try
    {
      Bundle localBundle = new Bundle();
      if (paramBoolean)
      {
        int j = i;
        localBundle.putInt("key_support_bankcard", j);
        if (paramBoolean)
          break label84;
      }
      while (true)
      {
        localBundle.putBoolean("key_is_oversea", i);
        i locali = (i)paramClass.newInstance();
        locali.m(localBundle);
        locali.a(paramActivity, localBundle);
        fal.put(paramClass.hashCode(), locali);
        return;
        int k = 2;
        break;
        label84: i = 0;
      }
    }
    catch (Exception localException)
    {
    }
  }

  public static boolean a(a parama)
  {
    fam = parama;
    return true;
  }

  public static boolean anK()
  {
    fam = null;
    return true;
  }

  public static void b(Context paramContext, int paramInt, Intent paramIntent)
  {
    if (fam != null)
    {
      fam.a(paramContext, paramInt, paramIntent);
      if ((fam instanceof OrderHandlerUI))
      {
        aa.d("MicroMsg.ProcessActivityMgr", "notifyPay app pay Finish!");
        return;
      }
      if ((fam instanceof WalletBrandUI))
      {
        aa.d("MicroMsg.ProcessActivityMgr", "notifyPay brand pay Finish!");
        return;
      }
      if ((fam instanceof c))
      {
        aa.d("MicroMsg.ProcessActivityMgr", "notifyPay qrcode pay Finish!");
        return;
      }
      aa.d("MicroMsg.ProcessActivityMgr", "notifyPay not found instanceof Finish!");
      return;
    }
    aa.d("MicroMsg.ProcessActivityMgr", "notifyPay callback is null. Finish!");
  }

  public static void d(Activity paramActivity, int paramInt)
  {
    i locali = (i)fal.get(paramActivity.getIntent().getIntExtra("process_id", 0));
    if (locali != null)
    {
      locali.c(paramActivity, paramInt);
      return;
    }
    paramActivity.finish();
  }

  public static void e(Activity paramActivity, Bundle paramBundle)
  {
    i locali = (i)fal.get(paramActivity.getIntent().getIntExtra("process_id", 0));
    if (locali != null)
      locali.b(paramActivity, paramBundle);
  }

  public static void f(Activity paramActivity, Bundle paramBundle)
  {
    i locali = (i)fal.get(paramActivity.getIntent().getIntExtra("process_id", 0));
    if (locali != null)
    {
      locali.c(paramActivity, paramBundle);
      return;
    }
    paramActivity.finish();
  }

  public static boolean g(Activity paramActivity, Bundle paramBundle)
  {
    i locali = (i)fal.get(paramActivity.getIntent().getIntExtra("process_id", 0));
    if (locali != null)
    {
      locali.m(paramBundle);
      return true;
    }
    return false;
  }

  public static void j(Activity paramActivity)
  {
    i locali = (i)fal.get(paramActivity.getIntent().getIntExtra("process_id", 0));
    if (locali != null)
      locali.c(paramActivity, 0);
  }

  public static boolean k(Activity paramActivity)
  {
    return (i)fal.get(paramActivity.getIntent().getIntExtra("process_id", 0)) != null;
  }

  public static Bundle l(Activity paramActivity)
  {
    i locali = (i)fal.get(paramActivity.getIntent().getIntExtra("process_id", 0));
    if (locali != null)
      return locali.anL();
    return new Bundle();
  }

  public static i m(Activity paramActivity)
  {
    return (i)fal.get(paramActivity.getIntent().getIntExtra("process_id", 0));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.b.h
 * JD-Core Version:    0.6.2
 */