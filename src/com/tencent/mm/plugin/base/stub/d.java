package com.tencent.mm.plugin.base.stub;

import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashMap;
import java.util.Map;

public final class d extends c
{
  private static final Map cOa;

  static
  {
    HashMap localHashMap = new HashMap();
    cOa = localHashMap;
    localHashMap.put("_build_info_sdk_int_", Integer.valueOf(570490883));
    cOa.put("_build_info_sdk_name_", "android 2.1.3");
    cOa.put("_wxapp_pay_entry_classname_", "com.tencent.mm.plugin.base.stub.WXPayEntryActivity");
  }

  public static Uri It()
  {
    return null;
  }

  public static int Iu()
  {
    return 0;
  }

  public static int Iv()
  {
    return 0;
  }

  public static Cursor a(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    String str1 = paramArrayOfString2[0];
    Object localObject = cOa.get(str1);
    if (localObject == null)
    {
      aa.w("MicroMsg.MMPluginProviderSharedPrefImpl", "not found value for key: " + str1);
      return null;
    }
    int i;
    MatrixCursor localMatrixCursor;
    Object[] arrayOfObject;
    if (localObject == null)
    {
      aa.e("MicroMsg.SDK.PluginProvider.Resolver", "unresolve failed, null value");
      i = 0;
      localMatrixCursor = new MatrixCursor(paramArrayOfString1);
      arrayOfObject = new Object[4];
      arrayOfObject[0] = Integer.valueOf(0);
      arrayOfObject[1] = str1;
      arrayOfObject[2] = Integer.valueOf(i);
      if (localObject != null)
        break label228;
    }
    label228: for (String str2 = null; ; str2 = localObject.toString())
    {
      arrayOfObject[3] = str2;
      localMatrixCursor.addRow(arrayOfObject);
      return localMatrixCursor;
      if ((localObject instanceof Integer))
      {
        i = 1;
        break;
      }
      if ((localObject instanceof Long))
      {
        i = 2;
        break;
      }
      if ((localObject instanceof String))
      {
        i = 3;
        break;
      }
      if ((localObject instanceof Boolean))
      {
        i = 4;
        break;
      }
      if ((localObject instanceof Float))
      {
        i = 5;
        break;
      }
      if ((localObject instanceof Double))
      {
        i = 6;
        break;
      }
      aa.e("MicroMsg.SDK.PluginProvider.Resolver", "unresolve failed, unknown type=" + localObject.getClass().toString());
      i = 0;
      break;
    }
  }

  public final boolean ak(Context paramContext)
  {
    super.ak(paramContext);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.d
 * JD-Core Version:    0.6.2
 */