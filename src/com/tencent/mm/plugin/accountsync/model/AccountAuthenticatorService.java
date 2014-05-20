package com.tencent.mm.plugin.accountsync.model;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class AccountAuthenticatorService extends Service
{
  private static a cIb = null;

  public IBinder onBind(Intent paramIntent)
  {
    if (paramIntent == null);
    while (!paramIntent.getAction().equals("android.accounts.AccountAuthenticator"))
      return null;
    if (cIb == null)
      cIb = new a(this);
    return cIb.getIBinder();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.model.AccountAuthenticatorService
 * JD-Core Version:    0.6.2
 */