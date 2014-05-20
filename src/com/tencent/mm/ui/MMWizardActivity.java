package com.tencent.mm.ui;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;
import java.util.Map;
import junit.framework.Assert;

public abstract class MMWizardActivity extends MMActivity
{
  protected static final Map gon = new HashMap();

  public static void b(Context paramContext, Intent paramIntent1, Intent paramIntent2)
  {
    String str = "trans." + cj.FE() + "." + paramIntent2.hashCode();
    gon.put(str, paramIntent2);
    paramIntent1.putExtra("WizardTransactionId", str);
    Intent localIntent = ((Activity)paramContext).getIntent();
    if (localIntent != null)
      localIntent.putExtra("WizardTransactionId", str);
    j(paramContext, paramIntent1);
  }

  public static void j(Context paramContext, Intent paramIntent)
  {
    aa.i("MicroMsg.MMWizardActivity", "startWizardActivity()");
    Assert.assertTrue("startWizardActivity: Param context should be a Activity :" + paramContext.toString(), paramContext instanceof Activity);
    Intent localIntent = ((Activity)paramContext).getIntent();
    Object localObject;
    String str1;
    if (localIntent != null)
    {
      localObject = localIntent.getStringExtra("WizardRootClass");
      str1 = localIntent.getStringExtra("WizardTransactionId");
    }
    while (true)
    {
      if (cj.hX((String)localObject));
      try
      {
        String str2 = paramIntent.getComponent().getClassName();
        localObject = str2;
        label81: Assert.assertFalse("startWizardActivity: ERROR in Get Root Class :[" + (String)localObject + "]", cj.hX((String)localObject));
        paramIntent.putExtra("WizardRootClass", (String)localObject);
        if (str1 != null)
          paramIntent.putExtra("WizardTransactionId", str1);
        paramContext.startActivity(paramIntent);
        return;
      }
      catch (Exception localException)
      {
        break label81;
      }
      str1 = null;
      localObject = null;
    }
  }

  protected final void aFs()
  {
    aa.i("MicroMsg.MMWizardActivity", "finishWizard()");
    String str1 = getIntent().getExtras().getString("WizardRootClass");
    Assert.assertFalse("finishWizard: ERROR in Get Root Class :[" + str1 + "]", cj.hX(str1));
    try
    {
      Class localClass2 = Class.forName(str1);
      localClass1 = localClass2;
      String str2 = "finishWizard: ERROR in Get Root Class :[" + str1 + "]";
      if (localClass1 != null);
      for (boolean bool = true; ; bool = false)
      {
        Assert.assertTrue(str2, bool);
        Intent localIntent = new Intent(this, localClass1);
        localIntent.putExtra("WizardRootClass", getIntent().getStringExtra("WizardRootClass"));
        localIntent.putExtra("WizardTransactionId", getIntent().getStringExtra("WizardTransactionId"));
        localIntent.putExtra("WizardRootKillSelf", true);
        localIntent.putExtra("wizard_activity_result_code", 1);
        localIntent.addFlags(67108864);
        startActivity(localIntent);
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
        Class localClass1 = null;
    }
  }

  protected final void cancel()
  {
    aa.i("MicroMsg.MMWizardActivity", "cancel()");
    String str = getIntent().getStringExtra("WizardTransactionId");
    Intent localIntent = (Intent)gon.get(str);
    gon.remove(str);
    if (localIntent != null)
      aa.d("MicroMsg.MMWizardActivity", "canceled exit for transaction=" + str + ", intent=" + localIntent);
  }

  protected final void exit(int paramInt)
  {
    aa.i("MicroMsg.MMWizardActivity", "exit()");
    String str = getIntent().getStringExtra("WizardTransactionId");
    Intent localIntent = (Intent)gon.get(str);
    gon.remove(str);
    if (localIntent != null)
    {
      aa.d("MicroMsg.MMWizardActivity", "doing post exit for transaction=" + str + ", intent=" + localIntent);
      localIntent.putExtra("wizard_activity_result_code", paramInt);
      startActivity(localIntent);
    }
  }

  public void finish()
  {
    aa.i("MicroMsg.MMWizardActivity", "finish()");
    String str = getIntent().getStringExtra("WizardRootClass");
    if (getComponentName().getClassName().equals(str))
    {
      aa.d("MicroMsg.MMWizardActivity", "root wizard activity");
      exit(-1);
    }
    super.finish();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    aa.i("MicroMsg.MMWizardActivity", "onCreate()");
    Assert.assertFalse("MMWizardActivity Should Start By startWizardActivity or startWizardNextStep", cj.hX(getIntent().getExtras().getString("WizardRootClass")));
    if (getIntent().getExtras().getBoolean("WizardRootKillSelf", false))
    {
      super.finish();
      aa.i("MicroMsg.MMWizardActivity", "finish wizard, root=" + getComponentName().getClassName());
      exit(getIntent().getExtras().getInt("wizard_activity_result_code"));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.MMWizardActivity
 * JD-Core Version:    0.6.2
 */