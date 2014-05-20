package com.tencent.mm.modelsimple;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.ContactsContract.Settings;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.j;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;

public final class f
{
  private static String BV()
  {
    String str;
    if (!be.se())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MMAccountManager", "getCurrentAccountName MMCore.acc Not Ready");
      str = "";
    }
    do
    {
      do
      {
        do
        {
          return str;
          str = (String)be.uz().sr().get(4);
        }
        while (!cj.hX(str));
        str = v.ti();
      }
      while (!cj.hX(str));
      str = v.th();
    }
    while ((!cj.hX(str)) && (!i.tD(str)));
    return "";
  }

  public static void T(Context paramContext)
  {
    a.avr();
    if (j.gcr == 0)
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MMAccountManager", "do not auto add account");
    do
    {
      return;
      if (j.gcr == 1)
      {
        if (z.zp() == com.tencent.mm.modelfriend.aa.crc)
        {
          int j = a(paramContext, z.zr(), null);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MMAccountManager", "auto add account result: " + j);
          return;
        }
        com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MMAccountManager", "the user not bind mobile or not aggreed to upload addressbook");
        return;
      }
    }
    while (j.gcr != 2);
    int i = a(paramContext, null);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MMAccountManager", "auto add account result: " + i);
  }

  public static boolean U(Context paramContext)
  {
    return r(paramContext, null);
  }

  public static boolean V(Context paramContext)
  {
    boolean bool = false;
    if (paramContext != null)
    {
      Intent localIntent = new Intent("com.tencent.mm.login.ACTION_LOGOUT");
      localIntent.putExtra("accountName", BV());
      localIntent.putExtra("accountType", "com.tencent.mm.account");
      bool = r(paramContext, BV());
      if (bool)
        paramContext.sendBroadcast(localIntent);
    }
    return bool;
  }

  public static void W(Context paramContext)
  {
    if (X(paramContext))
    {
      new c(paramContext, Z(paramContext)).start();
      return;
    }
    r(paramContext, null);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MMAccountManager", "no account added or not current account");
  }

  private static boolean X(Context paramContext)
  {
    Account localAccount = Z(paramContext);
    if (localAccount == null);
    while (!localAccount.name.equals(BV()))
      return false;
    return true;
  }

  public static boolean Y(Context paramContext)
  {
    if (!X(paramContext))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MMAccountManager", "no account added or not current account");
      return false;
    }
    Account localAccount = Z(paramContext);
    if (localAccount != null)
    {
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("expedited", true);
      localBundle.putBoolean("do_not_retry", true);
      ContentResolver.requestSync(localAccount, "com.android.contacts", localBundle);
      return true;
    }
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MMAccountManager", "no account added");
    return false;
  }

  private static Account Z(Context paramContext)
  {
    String str = BV();
    if (cj.hX(str))
      str = (String)be.uz().sr().get(6, "");
    if (!cj.hX(str))
    {
      Account[] arrayOfAccount = aa(paramContext);
      if (arrayOfAccount == null)
        return null;
      int i = arrayOfAccount.length;
      for (int j = 0; j < i; j++)
      {
        Account localAccount = arrayOfAccount[j];
        if (localAccount.name.equals(str))
          return localAccount;
      }
    }
    return null;
  }

  public static int a(Context paramContext, g paramg)
  {
    if (paramContext == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MMAccountManager", "context is null");
      return 0;
    }
    String str = BV();
    if (cj.hX(str))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MMAccountManager", "account username is null or nil");
      str = (String)be.uz().sr().get(6, "");
      if (cj.hX(str));
    }
    else
    {
      if (!t(paramContext, str))
        break label67;
      return 3;
    }
    return 0;
    try
    {
      label67: AccountManager localAccountManager = AccountManager.get(paramContext);
      Account localAccount = new Account(str, "com.tencent.mm.account");
      if (localAccountManager.addAccountExplicitly(localAccount, "", null))
      {
        ContentResolver.setSyncAutomatically(localAccount, "com.android.contacts", true);
        Bundle localBundle = new Bundle();
        localBundle.putString("authAccount", str);
        localBundle.putString("accountType", "com.tencent.mm.account");
        if (paramg != null)
          paramg.f(localBundle);
        return 1;
      }
    }
    catch (Exception localException)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MMAccountManager", "exception in addAccountNoNeedBindMobile() " + localException.getMessage());
      if (paramg != null)
        paramg.f(null);
    }
    return 2;
  }

  public static int a(Context paramContext, String paramString, g paramg)
  {
    if (paramContext == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MMAccountManager", "activity is null");
      return 0;
    }
    if (cj.hX(paramString))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MMAccountManager", "account username is null or nil");
      return 0;
    }
    String str = BV();
    if (cj.hX(str));
    while (true)
    {
      try
      {
        AccountManager localAccountManager = AccountManager.get(paramContext);
        Account localAccount = new Account(paramString, "com.tencent.mm.account");
        if (t(paramContext, paramString))
        {
          ContentResolver.setSyncAutomatically(localAccount, "com.android.contacts", true);
          return 3;
        }
        r(paramContext, null);
        if (localAccountManager.addAccountExplicitly(localAccount, "", null))
        {
          ContentResolver.setSyncAutomatically(localAccount, "com.android.contacts", true);
          Bundle localBundle = new Bundle();
          localBundle.putString("authAccount", paramString);
          localBundle.putString("accountType", "com.tencent.mm.account");
          if (paramg != null)
            paramg.f(localBundle);
          ContentValues localContentValues = new ContentValues();
          localContentValues.put("account_name", paramString);
          localContentValues.put("account_type", "com.tencent.mm.account");
          localContentValues.put("should_sync", Integer.valueOf(1));
          localContentValues.put("ungrouped_visible", Integer.valueOf(1));
          paramContext.getContentResolver().insert(ContactsContract.Settings.CONTENT_URI, localContentValues);
          return 1;
        }
      }
      catch (Exception localException)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MMAccountManager", "exception in addAccount() " + localException.getMessage());
        if (paramg != null)
          paramg.f(null);
        return 2;
      }
      paramString = str;
    }
  }

  private static Account[] aa(Context paramContext)
  {
    try
    {
      Account[] arrayOfAccount = AccountManager.get(paramContext).getAccountsByType("com.tencent.mm.account");
      return arrayOfAccount;
    }
    catch (Exception localException)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MMAccountManager", "get all accounts failed");
    }
    return null;
  }

  public static String ab(Context paramContext)
  {
    Account[] arrayOfAccount = u(paramContext, "com.google");
    String str = null;
    if (arrayOfAccount != null)
    {
      int i = arrayOfAccount.length;
      str = null;
      if (i > 0)
      {
        int j = arrayOfAccount.length;
        for (int k = 0; k < j; k++)
        {
          str = arrayOfAccount[k].name;
          if ((!cj.hX(str)) && (cj.hT(str)))
            break;
        }
      }
    }
    return str;
  }

  public static void d(Context paramContext, String paramString1, String paramString2)
  {
    if (X(paramContext))
    {
      new c(paramContext, Z(paramContext), paramString1, paramString2).start();
      return;
    }
    r(paramContext, null);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MMAccountManager", "no account added or not current account");
  }

  private static boolean r(Context paramContext, String paramString)
  {
    boolean bool = cj.hX(paramString);
    com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.MMAccountManager", "remove account : " + paramString);
    if (paramContext == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MMAccountManager", "null context");
      return false;
    }
    while (true)
    {
      int j;
      try
      {
        Account[] arrayOfAccount = aa(paramContext);
        if ((arrayOfAccount == null) || (arrayOfAccount.length == 0))
        {
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MMAccountManager", "get account info is null or nil");
          return true;
        }
        AccountManager localAccountManager = AccountManager.get(paramContext);
        int i = arrayOfAccount.length;
        j = 0;
        if (j < i)
        {
          Account localAccount = arrayOfAccount[j];
          if (bool)
          {
            localAccountManager.removeAccount(localAccount, null, null);
          }
          else if (localAccount.name.equals(paramString))
          {
            localAccountManager.removeAccount(localAccount, null, null);
            com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MMAccountManager", "remove account success: " + paramString);
          }
        }
      }
      catch (Exception localException)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MMAccountManager", "exception in removeAccount() " + localException.getMessage());
        return false;
      }
      return true;
      j++;
    }
  }

  public static void s(Context paramContext, String paramString)
  {
    if (X(paramContext))
    {
      new c(paramContext, Z(paramContext), paramString).start();
      return;
    }
    r(paramContext, null);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MMAccountManager", "no account added or not current account");
  }

  private static boolean t(Context paramContext, String paramString)
  {
    Account[] arrayOfAccount = aa(paramContext);
    if ((arrayOfAccount == null) || (arrayOfAccount.length == 0));
    while (true)
    {
      return false;
      int i = arrayOfAccount.length;
      for (int j = 0; j < i; j++)
        if (arrayOfAccount[j].name.equals(paramString))
          return true;
    }
  }

  private static Account[] u(Context paramContext, String paramString)
  {
    try
    {
      Account[] arrayOfAccount = AccountManager.get(paramContext).getAccountsByType(paramString);
      return arrayOfAccount;
    }
    catch (Exception localException)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MMAccountManager", "get all accounts failed");
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.f
 * JD-Core Version:    0.6.2
 */