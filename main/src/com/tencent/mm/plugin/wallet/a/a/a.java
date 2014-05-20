package com.tencent.mm.plugin.wallet.a.a;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.mm.plugin.wallet.b.l;
import com.tencent.mm.plugin.wallet.iap.ui.h;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONException;

public final class a
{
  public static int a(Intent paramIntent, b paramb)
  {
    d locald = new d();
    int i = p(paramIntent);
    aa.d("MicroMsg.IabResolver", "Owned items response: " + String.valueOf(i));
    if (i != 0)
    {
      c localc4 = c.jH(i);
      if (paramb != null)
        paramb.a(localc4, null);
      return i;
    }
    if ((!paramIntent.hasExtra("INAPP_PURCHASE_ITEM_LIST")) || (!paramIntent.hasExtra("INAPP_PURCHASE_DATA_LIST")) || (!paramIntent.hasExtra("INAPP_DATA_SIGNATURE_LIST")))
    {
      kg("Bundle returned from getPurchases() doesn't contain required fields.");
      c localc1 = c.jH(-1002);
      if (paramb != null)
        paramb.a(localc1, null);
      return -1002;
    }
    ArrayList localArrayList1 = paramIntent.getStringArrayListExtra("INAPP_PURCHASE_ITEM_LIST");
    ArrayList localArrayList2 = paramIntent.getStringArrayListExtra("INAPP_PURCHASE_DATA_LIST");
    ArrayList localArrayList3 = paramIntent.getStringArrayListExtra("INAPP_DATA_SIGNATURE_LIST");
    int j = 0;
    try
    {
      while (j < localArrayList2.size())
      {
        String str1 = (String)localArrayList2.get(j);
        String str2 = (String)localArrayList3.get(j);
        String str3 = (String)localArrayList1.get(j);
        aa.d("MicroMsg.IabResolver", "Sku is owned: " + str3);
        e locale = new e("inapp", str1, str2);
        if (TextUtils.isEmpty(locale.csU))
        {
          aa.w("MicroMsg.IabResolver", "In-app billing warning: " + "BUG: empty/null token!");
          aa.d("MicroMsg.IabResolver", "Purchase data: " + str1);
        }
        locald.eZL.put(locale.cZs, locale);
        j++;
      }
      c localc3 = c.jH(0);
      if (paramb != null)
        paramb.a(localc3, locald);
      return 0;
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        c localc2 = c.jH(-1002);
        if (paramb != null)
          paramb.a(localc2, locald);
      }
    }
  }

  public static d a(Intent paramIntent, h paramh)
  {
    if (paramIntent == null)
    {
      kg("Null data in IAB activity result.");
      c localc4 = c.jH(-1002);
      if (paramh != null)
        paramh.a(localc4, null);
    }
    label260: c localc1;
    do
    {
      int i;
      c localc3;
      do
      {
        String str1;
        String str2;
        c localc2;
        do
        {
          return null;
          i = paramIntent.getIntExtra("RESPONSE_CODE", 0);
          str1 = paramIntent.getStringExtra("INAPP_PURCHASE_DATA");
          str2 = paramIntent.getStringExtra("INAPP_DATA_SIGNATURE");
          if (i != 0)
            break label260;
          aa.d("MicroMsg.IabResolver", "Successful resultcode from purchase activity.");
          aa.d("MicroMsg.IabResolver", "Purchase data: " + str1);
          aa.d("MicroMsg.IabResolver", "Data signature: " + str2);
          aa.d("MicroMsg.IabResolver", "Extras: " + paramIntent.getExtras());
          if ((str1 != null) && (str2 != null))
            break;
          kg("BUG: either purchaseData or dataSignature is null.");
          localc2 = c.jH(-1008);
        }
        while (paramh == null);
        paramh.a(localc2, null);
        return null;
        try
        {
          e locale = new e("inapp", str1, str2);
          String str3 = locale.cZs;
          aa.d("MicroMsg.IabResolver", "Purchase signature successfully verified.");
          if (paramh != null)
            paramh.a(c.jH(0), locale);
          d locald = new d(str3, locale);
          return locald;
        }
        catch (JSONException localJSONException)
        {
          kg("Failed to parse purchase data.");
          localc3 = c.jH(-1002);
        }
      }
      while (paramh == null);
      paramh.a(localc3, null);
      return null;
      localc1 = c.jH(i);
    }
    while (paramh == null);
    paramh.a(localc1, null);
    return null;
  }

  public static boolean a(Intent paramIntent, h paramh, String paramString1, String paramString2, String paramString3)
  {
    int i = p(paramIntent);
    aa.d("MicroMsg.IabResolver", "Owned items response: " + String.valueOf(i));
    c localc = c.jH(i);
    l.c(paramString1, paramString2, paramString3, i, localc.dtj);
    if (paramh != null)
      paramh.a(localc, null);
    return true;
  }

  private static void kg(String paramString)
  {
    aa.e("MicroMsg.IabResolver", "In-app billing error: " + paramString);
  }

  private static int p(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      kg("Intent with no response code, assuming OK (known issue)");
      return 1;
    }
    Object localObject = paramIntent.getExtras().get("RESPONSE_CODE");
    if (localObject == null)
    {
      kg("Intent with no response code, assuming OK (known issue)");
      return 0;
    }
    if ((localObject instanceof Integer))
      return ((Integer)localObject).intValue();
    if ((localObject instanceof Long))
      return (int)((Long)localObject).longValue();
    kg("Unexpected type for intent response code.");
    kg(localObject.getClass().getName());
    throw new RuntimeException("Unexpected type for intent response code: " + localObject.getClass().getName());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.a.a.a
 * JD-Core Version:    0.6.2
 */