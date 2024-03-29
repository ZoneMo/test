package com.tencent.tmassistantsdk.openSDK;

import android.content.Context;
import android.content.Intent;
import com.tencent.tmassistantsdk.protocol.ProtocolPackage;
import com.tencent.tmassistantsdk.util.Base64;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class OpenSDKTool4Assistant
{
  public static final int ACTION_TYPE_APP_DETAIL = 2;
  public static final int ACTION_TYPE_AUTHORIZED = 3;
  public static final int ACTION_TYPE_DOWNLOAD_TASKLIST = 1;
  public static final int ACTION_TYPE_RELATE = 4;
  private static final String CRYPT_KEY = "ji*9^&43U0X-~./(";
  public static final String EXTRA_ERROR_CODE = "errorCode";
  public static final String EXTRA_ERROR_MSG = "errorMsg";
  public static final String EXTRA_HOST_PAGECKAGENAME = "hostPackageName";
  public static final String EXTRA_HOST_VERSION = "hostVersion";
  public static final String EXTRA_SNGAPPID = "sngAppId";
  public static final String EXTRA_STATE = "state";
  public static final String EXTRA_TASK_APKID = "taskApkId";
  public static final String EXTRA_TASK_APPID = "taskAppId";
  public static final String EXTRA_TASK_ID = "taskId";
  public static final String EXTRA_TASK_PACKAGENAME = "taskPackageName";
  public static final String EXTRA_TASK_VERSION = "taskVersion";
  public static final String EXTRA_UIN = "uin";
  public static final String EXTRA_UINTYPE = "uinType";
  public static final String EXTRA_VIA = "via";
  public static final String OPENSDK_ACTION_NAME = "com.tencent.assistantOpenSDK.downloadStateChange.action";
  public static final String STATE_CHANGED_PARAM = "stateChangedParam";

  public static String decryptUri(String paramString)
  {
    return new String(ProtocolPackage.decrypt(Base64.decode(paramString, 0), "ji*9^&43U0X-~./(".getBytes()));
  }

  public static String encryptUri(String paramString)
  {
    return Base64.encodeToString(ProtocolPackage.encrypt(paramString.getBytes(), "ji*9^&43U0X-~./(".getBytes()), 0);
  }

  public static void sendDownloadStateChanged(Context paramContext, Map paramMap)
  {
    Intent localIntent = new Intent("com.tencent.assistantOpenSDK.downloadStateChange.action");
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localIntent.putExtra((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    paramContext.sendBroadcast(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.openSDK.OpenSDKTool4Assistant
 * JD-Core Version:    0.6.2
 */