package com.tencent.mm.plugin.gwallet.a;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import com.android.a.a.a;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class b
{
  private a dsQ;
  private ServiceConnection dsR;
  private boolean dsS = false;
  boolean dsT = false;
  int dsU;
  private i dsV;
  private String dsW;
  private Context mContext;

  public b(Context paramContext)
  {
    this.mContext = paramContext;
  }

  private static int g(Bundle paramBundle)
  {
    Object localObject = paramBundle.get("RESPONSE_CODE");
    if (localObject == null)
    {
      aa.d("MicroMsg.IabHelper", "Bundle with null response code, assuming OK (known issue)");
      return 0;
    }
    if ((localObject instanceof Integer))
      return ((Integer)localObject).intValue();
    if ((localObject instanceof Long))
      return (int)((Long)localObject).longValue();
    kg("Unexpected type for bundle response code.");
    kg(localObject.getClass().getName());
    throw new RuntimeException("Unexpected type for bundle response code: " + localObject.getClass().getName());
  }

  public static String gl(int paramInt)
  {
    String[] arrayOfString1 = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
    String[] arrayOfString2 = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
    if (paramInt <= -1000)
    {
      int i = -1000 - paramInt;
      if ((i >= 0) && (i < arrayOfString2.length))
        return arrayOfString2[i];
      return String.valueOf(paramInt) + ":Unknown IAB Helper Error";
    }
    if ((paramInt < 0) || (paramInt >= arrayOfString1.length))
      return String.valueOf(paramInt) + ":Unknown";
    return arrayOfString1[paramInt];
  }

  private void kf(String paramString)
  {
    if (!this.dsS)
    {
      aa.e("MicroMsg.IabHelper", "Illegal state for operation (" + paramString + "): IAB helper is not set up.");
      throw new IllegalStateException("IAB helper is not set up. Can't perform operation: " + paramString);
    }
  }

  private static void kg(String paramString)
  {
    aa.e("MicroMsg.IabHelper", "In-app billing error: " + paramString);
  }

  public final void a(Activity paramActivity, String paramString1, String paramString2, i parami, String paramString3)
  {
    kf("launchPurchaseFlow");
    if ((paramString2.equals("subs")) && (!this.dsT))
    {
      k localk4 = new k(-1009, "Subscriptions are not available.");
      if (parami != null)
        parami.b(localk4, null);
    }
    k localk1;
    do
      while (true)
      {
        return;
        try
        {
          aa.d("MicroMsg.IabHelper", "Constructing buy intent for " + paramString1 + ", item type: " + paramString2 + ", extraData: " + paramString3);
          localBundle = this.dsQ.a(3, this.mContext.getPackageName(), paramString1, paramString2, paramString3);
          int i = g(localBundle);
          if (i != 0)
          {
            k localk3 = new k(i, "Unable to buy item");
            if (parami == null)
              continue;
            parami.b(localk3, null);
          }
        }
        catch (IntentSender.SendIntentException localSendIntentException)
        {
          Bundle localBundle;
          kg("SendIntentException while launching purchase flow for sku " + paramString1);
          k localk2 = new k(-1004, "Failed to send intent.");
          if (parami != null)
          {
            parami.b(localk2, null);
            return;
            PendingIntent localPendingIntent = (PendingIntent)localBundle.getParcelable("BUY_INTENT");
            aa.d("MicroMsg.IabHelper", "Launching buy intent for " + paramString1 + ". Request code: 10001");
            this.dsU = 10001;
            this.dsV = parami;
            this.dsW = paramString2;
            paramActivity.startIntentSenderForResult(localPendingIntent.getIntentSender(), 10001, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
            return;
          }
        }
        catch (RemoteException localRemoteException)
        {
          kg("RemoteException while launching purchase flow for sku " + paramString1);
          localk1 = new k(-1001, "Remote exception while starting purchase flow");
        }
      }
    while (parami == null);
    parami.b(localk1, null);
  }

  public final void a(h paramh)
  {
    if (this.dsS)
      throw new IllegalStateException("IAB helper is already set up.");
    aa.d("MicroMsg.IabHelper", "Starting in-app billing setup.");
    this.dsR = new c(this, paramh);
    Intent localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
    if (!this.mContext.getPackageManager().queryIntentServices(localIntent, 0).isEmpty())
      this.mContext.bindService(localIntent, this.dsR, 1);
    while (paramh == null)
      return;
    paramh.a(new k(-2001, "Google play not installed!"));
  }

  public final void a(String paramString, i parami)
  {
    Handler localHandler = new Handler();
    kf("queryInventory");
    new Thread(new f(this, paramString, localHandler, parami)).start();
  }

  public final void a(List paramList, i parami)
  {
    new Thread(new d(this, paramList, parami, new Handler())).start();
  }

  public final boolean a(int paramInt, Intent paramIntent)
  {
    if (paramInt != this.dsU)
      return false;
    kf("handleActivityResult");
    if (paramIntent == null)
    {
      kg("Null data in IAB activity result.");
      k localk2 = new k(-1002, "Null data in IAB result");
      if (this.dsV != null)
        this.dsV.b(localk2, null);
      return true;
    }
    Object localObject = paramIntent.getExtras().get("RESPONSE_CODE");
    int i;
    if (localObject == null)
    {
      kg("Intent with no response code, assuming OK (known issue)");
      i = 0;
    }
    while (true)
    {
      String str1 = paramIntent.getStringExtra("INAPP_PURCHASE_DATA");
      String str2 = paramIntent.getStringExtra("INAPP_DATA_SIGNATURE");
      aa.d("MicroMsg.IabHelper", "Purchase data: " + str1);
      aa.d("MicroMsg.IabHelper", "Data signature: " + str2);
      aa.d("MicroMsg.IabHelper", "Extras: " + paramIntent.getExtras());
      aa.d("MicroMsg.IabHelper", "Expected item type: " + this.dsW);
      k localk1 = new k(i, "Null data in IAB result");
      if (this.dsV != null)
        this.dsV.b(localk1, paramIntent);
      return true;
      if ((localObject instanceof Integer))
      {
        i = ((Integer)localObject).intValue();
      }
      else
      {
        if (!(localObject instanceof Long))
          break;
        i = (int)((Long)localObject).longValue();
      }
    }
    kg("Unexpected type for intent response code.");
    kg(localObject.getClass().getName());
    throw new RuntimeException("Unexpected type for intent response code: " + localObject.getClass().getName());
  }

  public final boolean a(ArrayList paramArrayList, j paramj)
  {
    kf("query details");
    Intent localIntent = new Intent();
    if (paramj == null)
      return false;
    if ((paramArrayList == null) || (paramArrayList.size() == 0))
    {
      aa.e("MicroMsg.IabHelper", "query list is empty!");
      k localk1 = new k(5, "no query list or is empty");
      localIntent.putExtra("RESPONSE_CODE", 5);
      localIntent.putExtra("QUERY_DETAIL_INFO", new ArrayList());
      paramj.a(localk1, localIntent);
      return true;
    }
    try
    {
      aa.d("MicroMsg.IabHelper", "query detail list with the size is " + paramArrayList.size());
      Bundle localBundle1 = new Bundle();
      localBundle1.putStringArrayList("ITEM_ID_LIST", paramArrayList);
      Bundle localBundle2 = this.dsQ.a(3, this.mContext.getPackageName(), "inapp", localBundle1);
      int i = g(localBundle2);
      aa.d("MicroMsg.IabHelper", "detail response: " + String.valueOf(i));
      if (i != 0)
      {
        aa.d("MicroMsg.IabHelper", "cannot query details");
        k localk3 = new k(i, "cannot query details");
        localIntent.putExtra("RESPONSE_CODE", i);
        paramj.a(localk3, localIntent);
        return true;
      }
      k localk4 = new k(i, "query list ok!");
      aa.d("MicroMsg.IabHelper", "result code : " + i);
      localIntent.putExtra("RESPONSE_CODE", i);
      localIntent.putExtra("RESPONSE_QUERY_DETAIL_INFO", localBundle2.getStringArrayList("DETAILS_LIST"));
      paramj.a(localk4, localIntent);
      Iterator localIterator = localBundle2.getStringArrayList("DETAILS_LIST").iterator();
      while (localIterator.hasNext())
        aa.d("MicroMsg.IabHelper", (String)localIterator.next());
    }
    catch (RemoteException localRemoteException)
    {
      kg("RemoteException while launching query details ");
      k localk2 = new k(-1001, "Remote exception while starting purchase flow");
      if (paramj != null)
      {
        localIntent.putExtra("RESPONSE_CODE", 6);
        localIntent.putExtra("QUERY_DETAIL_INFO", new ArrayList());
        paramj.a(localk2, localIntent);
      }
      return false;
    }
    return true;
  }

  public final void dispose()
  {
    aa.d("MicroMsg.IabHelper", "Disposing.");
    this.dsS = false;
    if (this.dsR != null)
      aa.d("MicroMsg.IabHelper", "Unbinding from service.");
    try
    {
      if (this.mContext != null)
        this.mContext.unbindService(this.dsR);
      this.dsR = null;
      this.dsQ = null;
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        aa.e("MicroMsg.IabHelper", localIllegalArgumentException.toString());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gwallet.a.b
 * JD-Core Version:    0.6.2
 */