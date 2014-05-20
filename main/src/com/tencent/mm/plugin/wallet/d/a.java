package com.tencent.mm.plugin.wallet.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.AssetManager;
import com.tencent.mm.a.f;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.h;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.util.EncodingUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class a
{
  private static final String fdG = h.cfE + "wallet";
  private static Map fdH = null;

  public static b ab(Context paramContext, String paramString)
  {
    String str;
    b localb1;
    if (fdH == null)
    {
      str = al.getContext().getSharedPreferences("bank_logo", 0).getString(paramString, "");
      if (cj.hX(str))
      {
        if (be.uz().isSDCardAvailable())
          com.tencent.mm.plugin.wallet.b.amV();
        pK(ac(paramContext, "config/bank_logo.xml"));
        str = (String)fdH.get(paramString);
      }
      if (cj.hX(str))
        break label150;
      localb1 = new b();
    }
    while (true)
    {
      try
      {
        JSONObject localJSONObject = new JSONObject(str);
        localb1.logoUrl = localJSONObject.getString("logo2x_url");
        localb1.fdI = localJSONObject.getString("bg2x_url");
        localb1.fdJ = localJSONObject.getString("wl2x_url");
        localb2 = localb1;
        return localb2;
        str = (String)fdH.get(paramString);
      }
      catch (JSONException localJSONException)
      {
        return null;
      }
      label150: b localb2 = null;
    }
  }

  private static String ac(Context paramContext, String paramString)
  {
    try
    {
      InputStream localInputStream = paramContext.getAssets().open(paramString);
      byte[] arrayOfByte = new byte[localInputStream.available()];
      localInputStream.read(arrayOfByte);
      String str = EncodingUtils.getString(arrayOfByte, "UTF-8");
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  public static String aoE()
  {
    return fdG;
  }

  public static boolean ar(byte[] paramArrayOfByte)
  {
    return pK(new String(paramArrayOfByte));
  }

  public static String mS(String paramString)
  {
    if (cj.hX(paramString))
    {
      aa.w("MicroMsg.WalletBankLogoStorage", "getStoragePath: but url is null");
      return null;
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = fdG;
    arrayOfObject[1] = f.h(paramString.getBytes());
    return String.format("%s/%s", arrayOfObject);
  }

  private static boolean pK(String paramString)
  {
    try
    {
      fdH = new HashMap();
      aa.d("MicroMsg.WalletBankLogoStorage", "bank logo:" + paramString);
      SharedPreferences.Editor localEditor = al.getContext().getSharedPreferences("bank_logo", 0).edit();
      JSONArray localJSONArray = new JSONObject(paramString).getJSONArray("bank_urls_list");
      int i = localJSONArray.length();
      for (int j = 0; j < i; j++)
      {
        JSONObject localJSONObject = localJSONArray.getJSONObject(j);
        String str1 = localJSONObject.optString("bank_type");
        String str2 = localJSONObject.toString();
        if ((cj.hX(str1)) || (cj.hX(str2)))
          break;
        localEditor.putString(str1, str2);
        fdH.put(str1, str2);
      }
      localEditor.commit();
      aa.d("MicroMsg.WalletBankLogoStorage", "update BankLogo config file. success!");
      return true;
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localException.getMessage();
      aa.b("MicroMsg.WalletBankLogoStorage", "parse band logo error. %s", arrayOfObject);
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.d.a
 * JD-Core Version:    0.6.2
 */