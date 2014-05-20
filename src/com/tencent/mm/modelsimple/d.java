package com.tencent.mm.modelsimple;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.OperationApplicationException;
import android.os.RemoteException;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.ArrayList;

public final class d
{
  private final String TAG = "MicroMsg.BatchOperation";
  private final ContentResolver cwS;
  ArrayList cwT;

  public d(c paramc, ContentResolver paramContentResolver)
  {
    this.cwS = paramContentResolver;
    this.cwT = new ArrayList();
  }

  public final void a(ContentProviderOperation paramContentProviderOperation)
  {
    this.cwT.add(paramContentProviderOperation);
  }

  public final void execute()
  {
    if (this.cwT.size() == 0)
    {
      aa.d("MicroMsg.BatchOperation", "no batch operation");
      return;
    }
    try
    {
      this.cwS.applyBatch("com.android.contacts", this.cwT);
      this.cwT.clear();
      return;
    }
    catch (OperationApplicationException localOperationApplicationException)
    {
      while (true)
      {
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = localOperationApplicationException.toString();
        aa.b("MicroMsg.BatchOperation", "apply batch operation failed", arrayOfObject3);
      }
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localRemoteException.toString();
        aa.b("MicroMsg.BatchOperation", "apply batch operation failed", arrayOfObject2);
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = localException.toString();
        aa.b("MicroMsg.BatchOperation", "apply batch operation failed", arrayOfObject1);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.d
 * JD-Core Version:    0.6.2
 */