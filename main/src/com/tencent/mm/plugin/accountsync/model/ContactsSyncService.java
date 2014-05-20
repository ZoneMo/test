package com.tencent.mm.plugin.accountsync.model;

import android.accounts.Account;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.Looper;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.al;
import com.tencent.mm.modelfriend.as;
import com.tencent.mm.modelsimple.c;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;

public class ContactsSyncService extends Service
  implements m
{
  private static Account cwO;
  private f cIe = null;
  private Looper cIf;

  public ContactsSyncService()
  {
    aa.i("MicroMsg.ContactsSyncService", "ContactsSyncService construction");
  }

  private void FQ()
  {
    if (this.cIf != null)
      this.cIf.quit();
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.ContactsSyncService", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString + " type = " + paramx.getType());
    if (paramx.getType() == 133)
    {
      be.uA().b(133, this);
      aa.i("MicroMsg.ContactsSyncService", "uploadcontact onSceneEnd: errType = " + paramInt1 + ", errCode = " + paramInt2);
      if (paramInt2 != 0)
      {
        FQ();
        aa.e("MicroMsg.ContactsSyncService", "uploadmcontact list null, do not do getmfriend.");
      }
    }
    while (paramx.getType() != 32)
    {
      return;
      be.uA().a(32, this);
      as localas = (as)paramx;
      al localal = new al(localas.zU(), localas.zV());
      be.uA().d(localal);
    }
    be.uA().b(32, this);
    aa.i("MicroMsg.ContactsSyncService", "getmfriend onSceneEnd: errType = " + paramInt1 + ", errCode = " + paramInt2);
    if ((paramInt1 == 0) && (paramInt2 == 0))
      new c(this, cwO).start();
    FQ();
  }

  public IBinder onBind(Intent paramIntent)
  {
    if (this.cIe == null)
      this.cIe = new f(this, getApplicationContext());
    return this.cIe.getSyncAdapterBinder();
  }

  public void onDestroy()
  {
    aa.i("MicroMsg.ContactsSyncService", "contacts sync service destory");
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.model.ContactsSyncService
 * JD-Core Version:    0.6.2
 */