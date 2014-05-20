package com.tencent.tmassistantsdk.openSDK;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.text.TextUtils;
import com.tencent.tmassistantsdk.channel.TMAssistantSDKChannel;
import com.tencent.tmassistantsdk.logreport.GetSettingEngine;
import com.tencent.tmassistantsdk.logreport.LogReportManager;
import com.tencent.tmassistantsdk.openSDK.QQDownloader.AssistantStore.DownloadInfos;
import com.tencent.tmassistantsdk.protocol.jce.DownloadChunkLogInfo;
import com.tencent.tmassistantsdk.util.GlobalUtil;
import com.tencent.tmassistantsdk.util.TMLog;
import java.io.File;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;

public class QQDownloaderOpenSDK
{
  public static final String AUTHORITY = "com.tencent.android.qqdownloader.provider";
  public static final Uri CONTENT_URI = AssistantStore.DownloadInfos.CONTENT_URI;
  private static final String TAG = "QQDownloaderOpenSDK";
  private static QQDownloaderOpenSDK mInstance = null;
  private String hostPackageName = null;
  private int hostVersionCode = 0;
  private Context mContext = null;
  private Map mDownloadParams = null;
  private DownloadStateChangedReceiver.IDownloadStateChangedListener mDownloadStateListener = new QQDownloaderOpenSDK.1(this);
  protected ReferenceQueue mListenerQueue = new ReferenceQueue();
  protected ArrayList mWeakListenerArrayList = new ArrayList();
  private int sdkAPILevel = 1;
  private TMAssistantSDKChannel sdkChannel = new TMAssistantSDKChannel();

  private String encodeParam(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      return URLEncoder.encode(paramString);
    return "";
  }

  private String formatIntentUriBody(String paramString, QQDownloaderParam paramQQDownloaderParam, boolean paramBoolean1, boolean paramBoolean2, Map paramMap)
  {
    String str1 = formatOplist(paramBoolean1, paramBoolean2);
    String str2 = encodeParam(paramQQDownloaderParam.SNGAppId);
    String str3 = encodeParam(paramQQDownloaderParam.taskAppId);
    String str4 = encodeParam(paramQQDownloaderParam.taskApkId);
    String str5 = encodeParam(paramQQDownloaderParam.taskPackageName);
    String str6 = encodeParam(paramQQDownloaderParam.via);
    String str7 = encodeParam(paramQQDownloaderParam.uin);
    String str8 = encodeParam(paramQQDownloaderParam.uinType);
    int i = paramQQDownloaderParam.taskVersion;
    Object localObject1 = "hostpname=" + this.hostPackageName + "&hostversioncode=" + this.hostVersionCode + "&sngappid=" + str2 + "&appid=" + str3 + "&pname=" + str5 + "&apkid=" + str4 + "&versioncode=" + i + "&oplist=" + str1 + "&taskid=" + paramString + "&via=" + str6 + "&uin=" + str7 + "&uintype=" + str8 + "&channelid=" + paramQQDownloaderParam.channelId;
    Object localObject2;
    String str9;
    String str10;
    if ((paramMap != null) && (paramMap.size() > 0))
    {
      Iterator localIterator = paramMap.entrySet().iterator();
      localObject2 = localObject1;
      if (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        str9 = (String)localEntry.getKey();
        str10 = (String)localEntry.getValue();
        if (TextUtils.isEmpty(str9))
          break label371;
      }
    }
    label371: for (Object localObject3 = localObject2 + "&" + str9 + "=" + encodeParam(str10); ; localObject3 = localObject2)
    {
      localObject2 = localObject3;
      break;
      localObject1 = localObject2;
      return localObject1;
    }
  }

  private String formatIntentUriHead(int paramInt)
  {
    String str;
    switch (paramInt)
    {
    default:
      str = "appdetails";
    case 2:
    case 1:
    case 3:
    case 4:
    }
    while (true)
    {
      return "tpmast://" + str + "?";
      str = "appdetails";
      continue;
      str = "download";
      continue;
      str = "appdetails";
      continue;
      str = "updatedownload";
    }
  }

  private String formatIntentUriPath(QQDownloaderParam paramQQDownloaderParam, boolean paramBoolean1, boolean paramBoolean2, int paramInt, String paramString, Map paramMap)
  {
    String str1 = formatIntentUriHead(paramInt);
    String str2 = formatIntentUriBody(paramString, paramQQDownloaderParam, paramBoolean1, paramBoolean2, paramMap);
    String str3 = URLEncoder.encode(OpenSDKTool4Assistant.encryptUri(str1 + str2));
    return "tmast://encrypt?encryptdata=" + str3;
  }

  private String formatOplist(boolean paramBoolean1, boolean paramBoolean2)
  {
    String str = "";
    if ((paramBoolean1) && (paramBoolean2))
      str = "1;2";
    do
    {
      return str;
      if (paramBoolean2)
        return "2";
    }
    while (!paramBoolean1);
    return "1";
  }

  public static QQDownloaderOpenSDK getInstance()
  {
    try
    {
      if (mInstance == null)
        mInstance = new QQDownloaderOpenSDK();
      QQDownloaderOpenSDK localQQDownloaderOpenSDK = mInstance;
      return localQQDownloaderOpenSDK;
    }
    finally
    {
    }
  }

  private boolean isFileExist(String paramString)
  {
    return new File(paramString).exists();
  }

  private void onStateChanged(QQDownloaderParam paramQQDownloaderParam, int paramInt1, int paramInt2, String paramString)
  {
    Iterator localIterator = this.mWeakListenerArrayList.iterator();
    while (localIterator.hasNext())
    {
      IQQDownloaderOpenSDKListener localIQQDownloaderOpenSDKListener = (IQQDownloaderOpenSDKListener)((WeakReference)localIterator.next()).get();
      if (localIQQDownloaderOpenSDKListener == null)
        TMLog.i("QQDownloaderOpenSDK", "onDownloadStateChanged listener = null");
      localIQQDownloaderOpenSDKListener.OnDownloadTaskStateChanged(paramQQDownloaderParam, paramInt1, paramInt2, paramString);
    }
  }

  private void relateToQQDownloader(Context paramContext, QQDownloaderParam paramQQDownloaderParam, String paramString)
  {
    String str = formatIntentUriPath(paramQQDownloaderParam, false, false, 4, paramString, null);
    Intent localIntent = new Intent("com.tencent.android.qqdownloader.action.RELATED");
    localIntent.setPackage("com.tencent.android.qqdownloader");
    localIntent.putExtra("command", "cmd_updatedownload");
    localIntent.putExtra("relatedurl", str);
    paramContext.sendBroadcast(localIntent);
  }

  public long addDownloadTaskFromAppDetail(QQDownloaderParam paramQQDownloaderParam, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramQQDownloaderParam == null)
      throw new Exception("QQDownloaderParam param cann't be null!");
    if (this.mDownloadParams != null)
    {
      String str1 = UUID.randomUUID().toString();
      this.mDownloadParams.put(str1, paramQQDownloaderParam);
      String str2 = formatIntentUriPath(paramQQDownloaderParam, paramBoolean1, paramBoolean2, 2, str1, null);
      long l1 = System.currentTimeMillis();
      long l2 = l1 + 300000L;
      return this.sdkChannel.AddDataItem(this.hostPackageName, this.hostVersionCode, "", 0, str2, l1, l2);
    }
    return -1L;
  }

  public long addDownloadTaskFromAuthorize(QQDownloaderParam paramQQDownloaderParam, String paramString1, String paramString2)
  {
    if (paramQQDownloaderParam == null)
      throw new Exception("QQDownloaderParam param cann't be null!");
    if (this.mDownloadParams != null)
    {
      String str1 = UUID.randomUUID().toString();
      if (this.mDownloadParams != null)
        this.mDownloadParams.put(str1, paramQQDownloaderParam);
      HashMap localHashMap = new HashMap();
      localHashMap.put("actionflag", paramString1);
      localHashMap.put("verifytype", paramString2);
      String str2 = formatIntentUriPath(paramQQDownloaderParam, true, true, 3, str1, localHashMap);
      long l1 = System.currentTimeMillis();
      long l2 = l1 + 300000L;
      return this.sdkChannel.AddDataItem(this.hostPackageName, this.hostVersionCode, "", 0, str2, l1, l2);
    }
    return -1L;
  }

  public long addDownloadTaskFromTaskList(QQDownloaderParam paramQQDownloaderParam, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramQQDownloaderParam == null)
      throw new Exception("QQDownloaderParam param cann't be null!");
    if (this.mDownloadParams != null)
    {
      String str1 = UUID.randomUUID().toString();
      this.mDownloadParams.put(str1, paramQQDownloaderParam);
      String str2 = formatIntentUriPath(paramQQDownloaderParam, paramBoolean1, paramBoolean2, 1, str1, null);
      long l1 = System.currentTimeMillis();
      long l2 = l1 + 300000L;
      return this.sdkChannel.AddDataItem(this.hostPackageName, this.hostVersionCode, "", 0, str2, l1, l2);
    }
    return -1L;
  }

  public int checkQQDownloaderInstalled()
  {
    if (this.mContext == null)
      throw new Exception("you must initial openSDK,by calling initQQDownloaderOpenSDK method!");
    PackageManager localPackageManager = this.mContext.getPackageManager();
    if (localPackageManager != null)
      try
      {
        if (localPackageManager.getPackageInfo("com.tencent.android.qqdownloader", 0) != null)
        {
          int i = GlobalUtil.getInstance().getQQDownloaderAPILevel();
          int j = this.sdkAPILevel;
          int k = 0;
          if (j > i)
            k = 2;
          return k;
        }
        return 1;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
      }
    return 1;
  }

  public void destroyQQDownloaderOpenSDK()
  {
    DownloadStateChangedReceiver.getInstance().unRegisteReceiver(this.mContext);
    DownloadStateChangedReceiver.getInstance().removeDownloadStateChangedListener(this.mDownloadStateListener);
    GlobalUtil.getInstance().destroy();
    this.mContext = null;
  }

  // ERROR //
  public com.tencent.tmassistantsdk.downloadclient.TMAssistantDownloadTaskInfo getDownloadTaskState(QQDownloaderParam paramQQDownloaderParam)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 45	com/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK:mContext	Landroid/content/Context;
    //   4: ifnonnull +14 -> 18
    //   7: new 320	java/lang/Exception
    //   10: dup
    //   11: ldc_w 402
    //   14: invokespecial 323	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   17: athrow
    //   18: aload_1
    //   19: ifnonnull +14 -> 33
    //   22: new 320	java/lang/Exception
    //   25: dup
    //   26: ldc_w 404
    //   29: invokespecial 323	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   32: athrow
    //   33: aload_0
    //   34: getfield 45	com/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK:mContext	Landroid/content/Context;
    //   37: invokevirtual 408	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   40: astore_2
    //   41: getstatic 40	com/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK:CONTENT_URI	Landroid/net/Uri;
    //   44: astore 8
    //   46: iconst_3
    //   47: anewarray 90	java/lang/String
    //   50: astore 9
    //   52: aload 9
    //   54: iconst_0
    //   55: aload_1
    //   56: getfield 123	com/tencent/tmassistantsdk/openSDK/QQDownloaderParam:taskPackageName	Ljava/lang/String;
    //   59: aastore
    //   60: aload 9
    //   62: iconst_1
    //   63: aload_1
    //   64: getfield 135	com/tencent/tmassistantsdk/openSDK/QQDownloaderParam:taskVersion	I
    //   67: invokestatic 411	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   70: aastore
    //   71: aload 9
    //   73: iconst_2
    //   74: aload_1
    //   75: getfield 176	com/tencent/tmassistantsdk/openSDK/QQDownloaderParam:channelId	Ljava/lang/String;
    //   78: aastore
    //   79: aload_2
    //   80: aload 8
    //   82: aconst_null
    //   83: ldc_w 413
    //   86: aload 9
    //   88: aconst_null
    //   89: invokevirtual 419	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   92: astore 10
    //   94: aload 10
    //   96: astore 4
    //   98: aload 4
    //   100: ifnull +561 -> 661
    //   103: aload 4
    //   105: invokeinterface 424 1 0
    //   110: ifeq +551 -> 661
    //   113: ldc 13
    //   115: new 137	java/lang/StringBuilder
    //   118: dup
    //   119: ldc_w 426
    //   122: invokespecial 142	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   125: aload_1
    //   126: getfield 123	com/tencent/tmassistantsdk/openSDK/QQDownloaderParam:taskPackageName	Ljava/lang/String;
    //   129: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   135: invokestatic 282	com/tencent/tmassistantsdk/util/TMLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   138: aload 4
    //   140: aload 4
    //   142: ldc_w 428
    //   145: invokeinterface 432 2 0
    //   150: invokeinterface 436 2 0
    //   155: lstore 12
    //   157: aload 4
    //   159: aload 4
    //   161: ldc_w 438
    //   164: invokeinterface 432 2 0
    //   169: invokeinterface 441 2 0
    //   174: invokestatic 445	com/tencent/tmassistantsdk/util/GlobalUtil:String2List	(Ljava/lang/String;)Ljava/util/ArrayList;
    //   177: iconst_0
    //   178: invokevirtual 448	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   181: checkcast 90	java/lang/String
    //   184: astore 14
    //   186: aload 4
    //   188: aload 4
    //   190: ldc_w 450
    //   193: invokeinterface 432 2 0
    //   198: invokeinterface 441 2 0
    //   203: astore 15
    //   205: aload 4
    //   207: aload 4
    //   209: ldc_w 452
    //   212: invokeinterface 432 2 0
    //   217: invokeinterface 436 2 0
    //   222: lstore 16
    //   224: aload 4
    //   226: aload 4
    //   228: ldc_w 454
    //   231: invokeinterface 432 2 0
    //   236: invokeinterface 436 2 0
    //   241: lstore 18
    //   243: aload 4
    //   245: aload 4
    //   247: ldc_w 456
    //   250: invokeinterface 432 2 0
    //   255: invokeinterface 460 2 0
    //   260: invokestatic 463	com/tencent/tmassistantsdk/util/GlobalUtil:assistantState2SDKState	(I)I
    //   263: istore 20
    //   265: ldc 13
    //   267: new 137	java/lang/StringBuilder
    //   270: dup
    //   271: ldc_w 465
    //   274: invokespecial 142	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   277: iload 20
    //   279: invokevirtual 151	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   282: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   285: invokestatic 282	com/tencent/tmassistantsdk/util/TMLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   288: iconst_4
    //   289: iload 20
    //   291: if_icmpne +34 -> 325
    //   294: aload_0
    //   295: aload 15
    //   297: invokespecial 467	com/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK:isFileExist	(Ljava/lang/String;)Z
    //   300: istore 21
    //   302: iload 21
    //   304: ifne +21 -> 325
    //   307: aload 4
    //   309: ifnull +10 -> 319
    //   312: aload 4
    //   314: invokeinterface 470 1 0
    //   319: aconst_null
    //   320: astore 7
    //   322: aload 7
    //   324: areturn
    //   325: new 472	com/tencent/tmassistantsdk/downloadclient/TMAssistantDownloadTaskInfo
    //   328: dup
    //   329: aload 14
    //   331: aload 15
    //   333: iload 20
    //   335: lload 16
    //   337: lload 18
    //   339: ldc_w 474
    //   342: invokespecial 477	com/tencent/tmassistantsdk/downloadclient/TMAssistantDownloadTaskInfo:<init>	(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V
    //   345: astore 7
    //   347: iload 20
    //   349: iconst_5
    //   350: if_icmpeq +15 -> 365
    //   353: iload 20
    //   355: iconst_4
    //   356: if_icmpeq +9 -> 365
    //   359: iload 20
    //   361: iconst_3
    //   362: if_icmpne +53 -> 415
    //   365: invokestatic 482	com/tencent/tmassistantsdk/logreport/LogReportManager:getInstance	()Lcom/tencent/tmassistantsdk/logreport/LogReportManager;
    //   368: iconst_1
    //   369: invokevirtual 486	com/tencent/tmassistantsdk/logreport/LogReportManager:createNewChunkLogInfo	(B)Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;
    //   372: astore 23
    //   374: aload 23
    //   376: aload_1
    //   377: getfield 126	com/tencent/tmassistantsdk/openSDK/QQDownloaderParam:via	Ljava/lang/String;
    //   380: putfield 489	com/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo:via	Ljava/lang/String;
    //   383: aload 23
    //   385: lload 12
    //   387: invokestatic 492	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   390: putfield 495	com/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo:appId	Ljava/lang/String;
    //   393: aload 23
    //   395: iload 20
    //   397: putfield 498	com/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo:resultState	I
    //   400: aload 23
    //   402: aload 14
    //   404: putfield 501	com/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo:requestUrl	Ljava/lang/String;
    //   407: invokestatic 482	com/tencent/tmassistantsdk/logreport/LogReportManager:getInstance	()Lcom/tencent/tmassistantsdk/logreport/LogReportManager;
    //   410: aload 23
    //   412: invokevirtual 505	com/tencent/tmassistantsdk/logreport/LogReportManager:addLogData	(Lcom/tencent/tmassistantsdk/protocol/jce/DownloadChunkLogInfo;)V
    //   415: aload_0
    //   416: getfield 53	com/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK:mDownloadParams	Ljava/util/Map;
    //   419: ifnull +155 -> 574
    //   422: aload_0
    //   423: getfield 53	com/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK:mDownloadParams	Ljava/util/Map;
    //   426: invokeinterface 189 1 0
    //   431: invokeinterface 195 1 0
    //   436: astore 24
    //   438: aload 24
    //   440: invokeinterface 201 1 0
    //   445: ifeq +210 -> 655
    //   448: aload 24
    //   450: invokeinterface 205 1 0
    //   455: checkcast 207	java/util/Map$Entry
    //   458: invokeinterface 213 1 0
    //   463: checkcast 109	com/tencent/tmassistantsdk/openSDK/QQDownloaderParam
    //   466: astore 28
    //   468: aload 28
    //   470: ifnull -32 -> 438
    //   473: aload 28
    //   475: getfield 123	com/tencent/tmassistantsdk/openSDK/QQDownloaderParam:taskPackageName	Ljava/lang/String;
    //   478: aload_1
    //   479: getfield 123	com/tencent/tmassistantsdk/openSDK/QQDownloaderParam:taskPackageName	Ljava/lang/String;
    //   482: invokevirtual 509	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   485: ifeq -47 -> 438
    //   488: aload 28
    //   490: getfield 135	com/tencent/tmassistantsdk/openSDK/QQDownloaderParam:taskVersion	I
    //   493: aload_1
    //   494: getfield 135	com/tencent/tmassistantsdk/openSDK/QQDownloaderParam:taskVersion	I
    //   497: if_icmpne -59 -> 438
    //   500: iconst_1
    //   501: istore 25
    //   503: iload 25
    //   505: ifne +69 -> 574
    //   508: ldc 13
    //   510: new 137	java/lang/StringBuilder
    //   513: dup
    //   514: ldc_w 426
    //   517: invokespecial 142	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   520: aload_1
    //   521: getfield 123	com/tencent/tmassistantsdk/openSDK/QQDownloaderParam:taskPackageName	Ljava/lang/String;
    //   524: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   527: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   530: invokestatic 282	com/tencent/tmassistantsdk/util/TMLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   533: invokestatic 329	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   536: invokevirtual 330	java/util/UUID:toString	()Ljava/lang/String;
    //   539: astore 26
    //   541: aload_1
    //   542: lload 12
    //   544: invokestatic 492	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   547: putfield 120	com/tencent/tmassistantsdk/openSDK/QQDownloaderParam:taskApkId	Ljava/lang/String;
    //   550: aload_0
    //   551: getfield 53	com/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK:mDownloadParams	Ljava/util/Map;
    //   554: aload 26
    //   556: aload_1
    //   557: invokeinterface 334 3 0
    //   562: pop
    //   563: aload_0
    //   564: aload_0
    //   565: getfield 45	com/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK:mContext	Landroid/content/Context;
    //   568: aload_1
    //   569: aload 26
    //   571: invokespecial 511	com/tencent/tmassistantsdk/openSDK/QQDownloaderOpenSDK:relateToQQDownloader	(Landroid/content/Context;Lcom/tencent/tmassistantsdk/openSDK/QQDownloaderParam;Ljava/lang/String;)V
    //   574: aload 4
    //   576: ifnull -254 -> 322
    //   579: aload 4
    //   581: invokeinterface 470 1 0
    //   586: aload 7
    //   588: areturn
    //   589: astore 5
    //   591: aconst_null
    //   592: astore 6
    //   594: aconst_null
    //   595: astore 7
    //   597: aload 6
    //   599: ifnull -277 -> 322
    //   602: aload 6
    //   604: invokeinterface 470 1 0
    //   609: aload 7
    //   611: areturn
    //   612: astore_3
    //   613: aconst_null
    //   614: astore 4
    //   616: aload 4
    //   618: ifnull +10 -> 628
    //   621: aload 4
    //   623: invokeinterface 470 1 0
    //   628: aload_3
    //   629: athrow
    //   630: astore_3
    //   631: goto -15 -> 616
    //   634: astore 11
    //   636: aload 4
    //   638: astore 6
    //   640: aconst_null
    //   641: astore 7
    //   643: goto -46 -> 597
    //   646: astore 22
    //   648: aload 4
    //   650: astore 6
    //   652: goto -55 -> 597
    //   655: iconst_0
    //   656: istore 25
    //   658: goto -155 -> 503
    //   661: aconst_null
    //   662: astore 7
    //   664: goto -90 -> 574
    //
    // Exception table:
    //   from	to	target	type
    //   41	94	589	java/lang/Exception
    //   41	94	612	finally
    //   103	288	630	finally
    //   294	302	630	finally
    //   325	347	630	finally
    //   365	415	630	finally
    //   415	438	630	finally
    //   438	468	630	finally
    //   473	500	630	finally
    //   508	574	630	finally
    //   103	288	634	java/lang/Exception
    //   294	302	634	java/lang/Exception
    //   325	347	634	java/lang/Exception
    //   365	415	646	java/lang/Exception
    //   415	438	646	java/lang/Exception
    //   438	468	646	java/lang/Exception
    //   473	500	646	java/lang/Exception
    //   508	574	646	java/lang/Exception
  }

  public void initQQDownloaderOpenSDK(Context paramContext)
  {
    this.mContext = paramContext;
    this.hostPackageName = paramContext.getPackageName();
    this.hostVersionCode = GlobalUtil.getAppVersionCode(this.mContext);
    this.sdkAPILevel = 1;
    GlobalUtil.getInstance().setContext(this.mContext);
    DownloadStateChangedReceiver.getInstance().registeReceiver(this.mContext);
    DownloadStateChangedReceiver.getInstance().addDownloadStateChangedListener(this.mDownloadStateListener);
    GetSettingEngine.getInstance().sendRequest();
    LogReportManager.getInstance().reportLogData();
  }

  public boolean registerListener(IQQDownloaderOpenSDKListener paramIQQDownloaderOpenSDKListener)
  {
    if (paramIQQDownloaderOpenSDKListener == null)
      return false;
    while (true)
    {
      Reference localReference = this.mListenerQueue.poll();
      if (localReference == null)
        break;
      this.mWeakListenerArrayList.remove(localReference);
    }
    Iterator localIterator = this.mWeakListenerArrayList.iterator();
    while (localIterator.hasNext())
      if ((IQQDownloaderOpenSDKListener)((WeakReference)localIterator.next()).get() == paramIQQDownloaderOpenSDKListener)
        return true;
    WeakReference localWeakReference = new WeakReference(paramIQQDownloaderOpenSDKListener, this.mListenerQueue);
    this.mWeakListenerArrayList.add(localWeakReference);
    return true;
  }

  public boolean removeDownloadTask(long paramLong)
  {
    if (paramLong >= 0L)
      return this.sdkChannel.delDataItem(paramLong);
    return false;
  }

  public void startToAppDetail(Context paramContext, QQDownloaderParam paramQQDownloaderParam, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramContext == null)
      throw new Exception("you must input an application or activity context!");
    String str = UUID.randomUUID().toString();
    if (this.mDownloadParams != null)
      this.mDownloadParams.put(str, paramQQDownloaderParam);
    if (paramBoolean1)
    {
      DownloadChunkLogInfo localDownloadChunkLogInfo = LogReportManager.getInstance().createNewChunkLogInfo((byte)1);
      localDownloadChunkLogInfo.via = paramQQDownloaderParam.via;
      localDownloadChunkLogInfo.UUID = str;
      localDownloadChunkLogInfo.appId = paramQQDownloaderParam.taskAppId;
      localDownloadChunkLogInfo.resultState = 1;
      LogReportManager.getInstance().addLogData(localDownloadChunkLogInfo);
    }
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(formatIntentUriPath(paramQQDownloaderParam, paramBoolean1, paramBoolean2, 2, str, null)));
    if ((paramContext instanceof Application))
      localIntent.addFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  public void startToAuthorized(Context paramContext, QQDownloaderParam paramQQDownloaderParam, String paramString1, String paramString2)
  {
    if (paramContext == null)
      throw new Exception("you must input an application or activity context!");
    if (paramQQDownloaderParam == null)
      throw new Exception("QQDownloaderParam param cann't be null!");
    String str = UUID.randomUUID().toString();
    if (this.mDownloadParams != null)
      this.mDownloadParams.put(str, paramQQDownloaderParam);
    DownloadChunkLogInfo localDownloadChunkLogInfo = LogReportManager.getInstance().createNewChunkLogInfo((byte)1);
    localDownloadChunkLogInfo.via = paramQQDownloaderParam.via;
    localDownloadChunkLogInfo.UUID = str;
    localDownloadChunkLogInfo.appId = paramQQDownloaderParam.taskAppId;
    localDownloadChunkLogInfo.resultState = 1;
    LogReportManager.getInstance().addLogData(localDownloadChunkLogInfo);
    HashMap localHashMap = new HashMap();
    localHashMap.put("actionflag", paramString1);
    localHashMap.put("verifytype", paramString2);
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(formatIntentUriPath(paramQQDownloaderParam, true, true, 3, str, localHashMap)));
    if ((paramContext instanceof Application))
      localIntent.addFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  public void startToDownloadTaskList(Context paramContext)
  {
    if (paramContext == null)
      throw new Exception("you must input an application or activity context!");
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("tmast://download?hostpname=" + this.hostPackageName + "&hostversion=" + this.hostVersionCode));
    if ((paramContext instanceof Application))
      localIntent.addFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  public void startToDownloadTaskList(Context paramContext, QQDownloaderParam paramQQDownloaderParam, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramContext == null)
      throw new Exception("you must input an application or activity context!");
    if (paramQQDownloaderParam == null)
      return;
    String str = UUID.randomUUID().toString();
    if (this.mDownloadParams != null)
      this.mDownloadParams.put(str, paramQQDownloaderParam);
    if (paramBoolean1)
    {
      DownloadChunkLogInfo localDownloadChunkLogInfo = LogReportManager.getInstance().createNewChunkLogInfo((byte)1);
      localDownloadChunkLogInfo.UUID = str;
      localDownloadChunkLogInfo.requestUrl = "";
      localDownloadChunkLogInfo.via = paramQQDownloaderParam.via;
      localDownloadChunkLogInfo.appId = paramQQDownloaderParam.taskAppId;
      LogReportManager.getInstance().addLogData(localDownloadChunkLogInfo);
    }
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(formatIntentUriPath(paramQQDownloaderParam, paramBoolean1, paramBoolean2, 1, str, null)));
    if ((paramContext instanceof Application))
      localIntent.addFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  public void startToMainActivity(Context paramContext)
  {
    if (paramContext == null)
      throw new Exception("you must input an application or activity context!");
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("tmast://competitive?hostpname=" + this.hostPackageName + "&hostversion=" + this.hostVersionCode));
    if ((paramContext instanceof Application))
      localIntent.addFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  public boolean unregisterListener(IQQDownloaderOpenSDKListener paramIQQDownloaderOpenSDKListener)
  {
    if (paramIQQDownloaderOpenSDKListener == null)
      return false;
    Iterator localIterator = this.mWeakListenerArrayList.iterator();
    while (localIterator.hasNext())
      if ((IQQDownloaderOpenSDKListener)((WeakReference)localIterator.next()).get() == paramIQQDownloaderOpenSDKListener)
      {
        localIterator.remove();
        return true;
      }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.openSDK.QQDownloaderOpenSDK
 * JD-Core Version:    0.6.2
 */