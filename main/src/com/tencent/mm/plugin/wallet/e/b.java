package com.tencent.mm.plugin.wallet.e;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.os.Build.VERSION;
import android.view.View;
import android.widget.EditText;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.o;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONObject;

public final class b
{
  private static SimpleDateFormat fer = null;

  public static Dialog a(Context paramContext, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    View localView = View.inflate(paramContext, k.bbR, null);
    Dialog localDialog = new Dialog(paramContext, o.bIL);
    localDialog.setCancelable(paramBoolean);
    localDialog.setContentView(localView);
    localDialog.setOnCancelListener(paramOnCancelListener);
    localDialog.show();
    return localDialog;
  }

  public static String a(Context paramContext, Bankcard paramBankcard)
  {
    if (paramBankcard != null)
      return paramBankcard.dCO + " " + paramContext.getString(n.bGX) + paramBankcard.eWQ;
    return "";
  }

  public static void a(EditText paramEditText)
  {
    if (Build.VERSION.SDK_INT < 11)
    {
      paramEditText.setInputType(0);
      return;
    }
    try
    {
      Class[] arrayOfClass2 = new Class[1];
      arrayOfClass2[0] = Boolean.TYPE;
      Method localMethod2 = EditText.class.getMethod("setShowSoftInputOnFocus", arrayOfClass2);
      localMethod2.setAccessible(false);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Boolean.valueOf(false);
      localMethod2.invoke(paramEditText, arrayOfObject2);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      aa.e("erik", "setShowSoftInputOnFocus exception!");
      try
      {
        Class[] arrayOfClass1 = new Class[1];
        arrayOfClass1[0] = Boolean.TYPE;
        Method localMethod1 = EditText.class.getMethod("setSoftInputShownOnFocus", arrayOfClass1);
        localMethod1.setAccessible(false);
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Boolean.valueOf(false);
        localMethod1.invoke(paramEditText, arrayOfObject1);
        return;
      }
      catch (Exception localException2)
      {
        paramEditText.setInputType(0);
        return;
      }
    }
    catch (Exception localException1)
    {
    }
  }

  public static boolean a(JSONObject paramJSONObject, String paramString)
  {
    return "1".equals(paramJSONObject.optString(paramString, "0"));
  }

  public static String b(double paramDouble, String paramString)
  {
    if (("CNY".equals(paramString)) || ("1".equals(paramString)) || (cj.hX(paramString)))
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Double.valueOf(paramDouble);
      return String.format("￥ %.2f", arrayOfObject1);
    }
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = paramString;
    arrayOfObject2[1] = Double.valueOf(paramDouble);
    return String.format("%s %.2f", arrayOfObject2);
  }

  public static void b(MMActivity paramMMActivity)
  {
    paramMMActivity.mC(n.bHI);
  }

  public static String e(double paramDouble)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Double.valueOf(paramDouble);
    return String.format("%.2f", arrayOfObject);
  }

  public static String gP(int paramInt)
  {
    if (fer == null)
      fer = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    return fer.format(new Date(1000L * paramInt));
  }

  public static String pP(String paramString)
  {
    if (("CNY".equals(paramString)) || ("1".equals(paramString)) || (cj.hX(paramString)))
      paramString = "￥";
    return paramString;
  }

  public static String pQ(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 8))
    {
      int i = paramString.length();
      String str1 = paramString.substring(0, i - 8);
      String str2 = paramString.substring(i - 4);
      paramString = str1 + "****" + str2;
    }
    return paramString;
  }

  public static String pR(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
    {
      String str1 = paramString.substring(1, paramString.length());
      aa.d("MicroMsg.WalletUtil", "tail : " + str1);
      String str2 = paramString.substring(0, 1);
      aa.d("MicroMsg.WalletUtil", "head : " + str2);
      aa.d("MicroMsg.WalletUtil", "after : " + str2);
      return "*" + str1;
    }
    return "";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.e.b
 * JD-Core Version:    0.6.2
 */