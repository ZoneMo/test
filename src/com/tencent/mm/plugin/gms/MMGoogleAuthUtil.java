package com.tencent.mm.plugin.gms;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.e;

public class MMGoogleAuthUtil extends Activity
{
  private String csU;
  private String dsv;
  private String dsw;
  public int dsx = 0;

  private void Z(String paramString1, String paramString2)
  {
    new a(this, this, paramString1, paramString2).execute(new Void[0]);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1)
    {
      switch (paramInt1)
      {
      default:
        return;
      case 2001:
        String str = paramIntent.getStringExtra("authAccount");
        Intent localIntent2 = new Intent();
        localIntent2.putExtra("error_code", 0);
        localIntent2.putExtra("account", str);
        setResult(-1, localIntent2);
        finish();
        return;
      case 2002:
      }
      Z(this.dsv, this.dsw);
      return;
    }
    switch (paramInt1)
    {
    default:
      return;
    case 2001:
    case 2002:
    }
    Intent localIntent1 = new Intent();
    localIntent1.putExtra("error_code", -1);
    localIntent1.putExtra("error_msg", "User Cancel.");
    setResult(paramInt2, localIntent1);
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    int i = 1;
    super.onCreate(paramBundle);
    requestWindowFeature(i);
    Intent localIntent1 = getIntent();
    Intent localIntent2 = new Intent();
    if (localIntent1 != null)
    {
      String str = localIntent1.getAction();
      if (!TextUtils.isEmpty(str))
      {
        if (str.equals("com.tencent.mm.gms.ACTION_CHOOSE_ACCOUNT"))
        {
          String[] arrayOfString = new String[i];
          arrayOfString[0] = "com.google";
          Intent localIntent3 = new Intent();
          localIntent3.setAction("com.google.android.gms.common.account.CHOOSE_ACCOUNT");
          localIntent3.putExtra("allowableAccounts", null);
          localIntent3.putExtra("allowableAccountTypes", arrayOfString);
          localIntent3.putExtra("addAccountOptions", null);
          localIntent3.putExtra("selectedAccount", null);
          localIntent3.putExtra("alwaysPromptForAccount", false);
          localIntent3.putExtra("descriptionTextOverride", null);
          localIntent3.putExtra("authTokenType", null);
          localIntent3.putExtra("addAccountRequiredFeatures", null);
          localIntent3.putExtra("setGmsCoreAccount", false);
          localIntent3.putExtra("overrideTheme", 0);
          startActivityForResult(localIntent3, 2001);
          return;
        }
        if (str.equals("com.tencent.mm.gms.ACTION_GET_TOKEN"))
        {
          this.dsv = localIntent1.getStringExtra("gmail");
          this.dsw = localIntent1.getStringExtra("scope");
          Z(this.dsv, this.dsw);
          return;
        }
        if (str.equals("com.tencent.mm.gms.CHECK_GP_SERVICES"))
        {
          int k = e.i(this);
          String.valueOf(k);
          if (k != 0)
            break label302;
        }
      }
    }
    while (true)
    {
      localIntent2.putExtra("gpservices", i);
      setResult(-1, localIntent2);
      finish();
      localIntent2.putExtra("error_msg", "null intent or action.");
      setResult(-1, localIntent2);
      finish();
      return;
      label302: int j = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gms.MMGoogleAuthUtil
 * JD-Core Version:    0.6.2
 */