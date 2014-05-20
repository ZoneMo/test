package com.tencent.mm.plugin.accountsync.model;

import android.accounts.Account;
import android.accounts.OperationCanceledException;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.SyncResult;
import android.os.Bundle;
import android.os.Looper;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;

final class f extends AbstractThreadedSyncAdapter
{
  private Context mContext;

  public f(ContactsSyncService paramContactsSyncService, Context paramContext)
  {
    super(paramContext, true);
    this.mContext = paramContext;
  }

  public final void onPerformSync(Account paramAccount, Bundle paramBundle, String paramString, ContentProviderClient paramContentProviderClient, SyncResult paramSyncResult)
  {
    if (!be.se())
    {
      aa.e("MicroMsg.ContactsSyncService", "account not ready, ignore this sync");
      return;
    }
    try
    {
      Looper.prepare();
      ContactsSyncService.a(this.cIg, Looper.myLooper());
      ContactsSyncService.a(this.cIg, this.mContext, paramAccount);
      Looper.loop();
      return;
    }
    catch (OperationCanceledException localOperationCanceledException)
    {
      ContactsSyncService.a(this.cIg);
      aa.e("MicroMsg.ContactsSyncService", "ContactsSyncService.onPerformSync error: " + localOperationCanceledException.getMessage());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.model.f
 * JD-Core Version:    0.6.2
 */