package com.tencent.mm.plugin.wallet.b;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import com.tencent.mm.c.a.id;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.bind.ui.WalletBindUI;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;

public abstract class i
{
  protected Bundle diG = new Bundle();

  public static void n(Activity paramActivity)
  {
    if ((!paramActivity.isFinishing()) && ((paramActivity instanceof MMActivity)))
      ((MMActivity)paramActivity).finish();
  }

  public i a(Activity paramActivity, Bundle paramBundle)
  {
    return this;
  }

  protected final void a(Activity paramActivity, Class paramClass, int paramInt)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "backActivity to " + paramClass.getSimpleName());
    Intent localIntent = new Intent(paramActivity, paramClass);
    localIntent.putExtra("process_id", getClass().hashCode());
    localIntent.addFlags(67108864);
    paramActivity.startActivity(localIntent);
    this.diG.putInt("key_err_code", paramInt);
  }

  protected void a(Activity paramActivity, Class paramClass, Bundle paramBundle)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "end with " + paramClass.getSimpleName());
    Intent localIntent = new Intent(paramActivity, paramClass);
    if (paramBundle != null)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("intent_pay_end_errcode", paramBundle.getInt("intent_pay_end_errcode"));
      localBundle.putString("intent_pay_app_url", paramBundle.getString("intent_pay_app_url"));
      localBundle.putBoolean("intent_pay_end", paramBundle.getBoolean("intent_pay_end"));
      localIntent.putExtras(localBundle);
    }
    localIntent.putExtra("intent_finish", true);
    localIntent.addFlags(67108864);
    ((WalletBaseUI)paramActivity).aoL();
    paramActivity.startActivity(localIntent);
    if (this.diG != null)
      this.diG.clear();
    h.Fp().remove(getClass().hashCode());
  }

  public final Bundle anL()
  {
    return this.diG;
  }

  public final int anM()
  {
    return this.diG.getInt("key_support_bankcard", 1);
  }

  public final boolean anN()
  {
    return this.diG.getBoolean("key_is_oversea", false);
  }

  public final boolean anO()
  {
    int i = this.diG.getInt("key_pay_flag", 0);
    boolean bool = false;
    if (i == 2)
      bool = true;
    return bool;
  }

  public final boolean anP()
  {
    return this.diG.getInt("key_pay_flag", 0) == 1;
  }

  public final boolean anQ()
  {
    int i = this.diG.getInt("key_pay_flag", 0);
    boolean bool = false;
    if (i == 3)
      bool = true;
    return bool;
  }

  public abstract void b(Activity paramActivity, Bundle paramBundle);

  protected final void b(Activity paramActivity, Class paramClass, Bundle paramBundle)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "startActivity to " + paramClass.getSimpleName());
    Intent localIntent = new Intent(paramActivity, paramClass);
    localIntent.putExtra("process_id", getClass().hashCode());
    if ((!paramActivity.isFinishing()) && ((paramActivity instanceof WalletBaseUI)))
      ((WalletBaseUI)paramActivity).aoL();
    paramActivity.startActivity(localIntent);
    if (paramBundle != null)
      this.diG.putAll(paramBundle);
    aa.d("MicroMsg.ProcessActivityMgr", "bankcard tag :" + anM());
  }

  public abstract void c(Activity paramActivity, int paramInt);

  public abstract void c(Activity paramActivity, Bundle paramBundle);

  protected final void c(Activity paramActivity, Class paramClass, Bundle paramBundle)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "startActivity to " + paramClass.getSimpleName() + " with flag 67108864");
    Intent localIntent = new Intent(paramActivity, paramClass);
    localIntent.putExtra("process_id", getClass().hashCode());
    localIntent.addFlags(67108864);
    if ((!paramActivity.isFinishing()) && ((paramActivity instanceof WalletBaseUI)))
      ((WalletBaseUI)paramActivity).aoL();
    paramActivity.startActivity(localIntent);
    if (paramBundle != null)
      this.diG.putAll(paramBundle);
    aa.d("MicroMsg.ProcessActivityMgr", "bankcard tag :" + anM());
  }

  public final void d(Activity paramActivity, Class paramClass, Bundle paramBundle)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "startActivityForResult to " + paramClass.getSimpleName());
    Intent localIntent = new Intent(paramActivity, paramClass);
    localIntent.putExtra("process_id", getClass().hashCode());
    localIntent.addFlags(67108864);
    if ((!paramActivity.isFinishing()) && ((paramActivity instanceof WalletBaseUI)))
      ((WalletBaseUI)paramActivity).aoL();
    paramActivity.startActivityForResult(localIntent, 1);
    if (paramBundle != null)
      this.diG.putAll(paramBundle);
  }

  public abstract boolean d(Activity paramActivity, Bundle paramBundle);

  protected final void h(Activity paramActivity, Bundle paramBundle)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "end with IndexActivity");
    Intent localIntent = new Intent();
    if (paramBundle != null)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("intent_pay_end_errcode", paramBundle.getInt("intent_pay_end_errcode"));
      localBundle.putString("intent_pay_app_url", paramBundle.getString("intent_pay_app_url"));
      localBundle.putBoolean("intent_pay_end", paramBundle.getBoolean("intent_pay_end"));
      localIntent.putExtras(localBundle);
    }
    localIntent.putExtra("intent_finish", true);
    localIntent.addFlags(67108864);
    ((WalletBaseUI)paramActivity).aoL();
    com.tencent.mm.ak.a.b(paramActivity, "mall", ".ui.MallIndexUI", localIntent);
    if (this.diG != null)
      this.diG.clear();
    h.Fp().remove(getClass().hashCode());
  }

  protected final void i(Activity paramActivity, Bundle paramBundle)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "end with endWithBindResActivity");
    Intent localIntent = new Intent(paramActivity, WalletBindUI.class);
    if (paramBundle != null)
      localIntent.putExtra("intent_bind_end", paramBundle.getBoolean("intent_bind_end", false));
    localIntent.addFlags(67108864);
    ((WalletBaseUI)paramActivity).aoL();
    paramActivity.startActivity(localIntent);
    if (this.diG != null)
      this.diG.clear();
    h.Fp().remove(getClass().hashCode());
    id localid = new id();
    if (localIntent.getBooleanExtra("intent_bind_end", false))
    {
      aa.d("MicroMsg.ProcessActivityMgr", "pay done... errCode:" + localIntent.getBooleanExtra("intent_bind_end", false));
      h.b(paramActivity, -1, localIntent);
      localid.bRC.bRE = -1;
      localid.bRC.bRF = localIntent;
    }
    while (true)
    {
      com.tencent.mm.sdk.b.a.ayH().f(localid);
      return;
      aa.d("MicroMsg.ProcessActivityMgr", "pay cancel");
      h.b(paramActivity, 0, localIntent);
      localid.bRC.bRE = 0;
    }
  }

  public final boolean jK(int paramInt)
  {
    if (!this.diG.containsKey("key_support_bankcard"));
    int i;
    do
    {
      return true;
      i = anM();
    }
    while (i == 0);
    return Bankcard.aH(i, paramInt);
  }

  public final i m(Bundle paramBundle)
  {
    this.diG.putAll(paramBundle);
    return this;
  }

  public final void o(Activity paramActivity)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "end process and clear data ");
    if ((!paramActivity.isFinishing()) && ((paramActivity instanceof MMActivity)))
      ((MMActivity)paramActivity).finish();
    if (this.diG != null)
      this.diG.clear();
    h.Fp().remove(getClass().hashCode());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.b.i
 * JD-Core Version:    0.6.2
 */