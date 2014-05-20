package com.tencent.tmassistantsdk.protocol;

import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.tencent.tmassistantsdk.protocol.jce.JceCmd;
import com.tencent.tmassistantsdk.protocol.jce.ReportLogRequest;
import com.tencent.tmassistantsdk.protocol.jce.ReqHead;
import com.tencent.tmassistantsdk.protocol.jce.Request;
import com.tencent.tmassistantsdk.protocol.jce.Response;
import com.tencent.tmassistantsdk.protocol.jce.RspHead;
import com.tencent.tmassistantsdk.util.Cryptor;
import com.tencent.tmassistantsdk.util.GlobalUtil;
import java.util.List;

public class ProtocolPackage
{
  static final String CRYPT_KEY = "ji*9^&43U0X-~./(";
  static final byte FLAG_CRYPT = 2;
  static final byte FLAG_ZIP = 1;
  public static final String ServerEncoding = "utf-8";
  static final int ZIP_TRIGGER = 256;

  public static byte[] buildPostData(Request paramRequest)
  {
    if (paramRequest == null)
      return null;
    paramRequest.head.encryptWithPack = 0;
    if (paramRequest.body.length > 256)
    {
      paramRequest.body = ZipUtils.zip(paramRequest.body);
      paramRequest.head.encryptWithPack = ((byte)(0x1 | paramRequest.head.encryptWithPack));
    }
    paramRequest.body = encrypt(paramRequest.body, "ji*9^&43U0X-~./(".getBytes());
    paramRequest.head.encryptWithPack = ((byte)(0x2 | paramRequest.head.encryptWithPack));
    return jceStructToUTF8Byte(paramRequest);
  }

  public static JceStruct buildReportRequest(List paramList, String paramString1, int paramInt, String paramString2)
  {
    ReportLogRequest localReportLogRequest = new ReportLogRequest();
    localReportLogRequest.logType = 0;
    localReportLogRequest.logData = formatLogData(paramList);
    localReportLogRequest.hostAppPackageName = paramString1;
    localReportLogRequest.hostAppVersion = paramInt;
    localReportLogRequest.hostUserId = paramString2;
    return localReportLogRequest;
  }

  public static Request buildRequest(JceStruct paramJceStruct)
  {
    if (paramJceStruct == null)
      return null;
    Request localRequest = new Request();
    localRequest.head = getReqHead(paramJceStruct);
    localRequest.body = jceStructToUTF8Byte(paramJceStruct);
    return localRequest;
  }

  public static JceStruct bytes2JceObj(byte[] paramArrayOfByte, Class paramClass)
  {
    if (paramArrayOfByte == null)
      return null;
    try
    {
      JceInputStream localJceInputStream = new JceInputStream(paramArrayOfByte);
      localJceInputStream.setServerEncoding("utf-8");
      JceStruct localJceStruct = (JceStruct)paramClass.newInstance();
      localJceStruct.readFrom(localJceInputStream);
      return localJceStruct;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  private static JceStruct createFromRequest(JceStruct paramJceStruct)
  {
    if (paramJceStruct == null)
      return null;
    String str1 = paramJceStruct.getClass().getName();
    String str2 = str1.substring(0, -7 + str1.length()) + "Response";
    try
    {
      localJceStruct = (JceStruct)Class.forName(str2).newInstance();
      return localJceStruct;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      while (true)
        localJceStruct = null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localJceStruct = null;
    }
    catch (InstantiationException localInstantiationException)
    {
      while (true)
        JceStruct localJceStruct = null;
    }
  }

  public static byte[] decrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    return new Cryptor().decrypt(paramArrayOfByte1, paramArrayOfByte2);
  }

  public static byte[] encrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    return new Cryptor().encrypt(paramArrayOfByte1, paramArrayOfByte2);
  }

  // ERROR //
  public static byte[] formatLogData(List paramList)
  {
    // Byte code:
    //   0: new 167	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 168	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: new 170	java/io/DataOutputStream
    //   11: dup
    //   12: aload_1
    //   13: invokespecial 173	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   16: astore_2
    //   17: aload_0
    //   18: invokeinterface 179 1 0
    //   23: astore 11
    //   25: aload 11
    //   27: invokeinterface 185 1 0
    //   32: ifeq +61 -> 93
    //   35: aload 11
    //   37: invokeinterface 188 1 0
    //   42: checkcast 189	[B
    //   45: astore 15
    //   47: aload_2
    //   48: aload 15
    //   50: arraylength
    //   51: invokevirtual 193	java/io/DataOutputStream:writeInt	(I)V
    //   54: aload_2
    //   55: aload 15
    //   57: invokevirtual 196	java/io/DataOutputStream:write	([B)V
    //   60: goto -35 -> 25
    //   63: astore 6
    //   65: aload_2
    //   66: astore 7
    //   68: aload_1
    //   69: astore 8
    //   71: aload 8
    //   73: ifnull +8 -> 81
    //   76: aload 8
    //   78: invokevirtual 199	java/io/ByteArrayOutputStream:close	()V
    //   81: aload 7
    //   83: ifnull +8 -> 91
    //   86: aload 7
    //   88: invokevirtual 200	java/io/DataOutputStream:close	()V
    //   91: aconst_null
    //   92: areturn
    //   93: aload_1
    //   94: invokevirtual 203	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   97: astore 12
    //   99: aload_1
    //   100: invokevirtual 199	java/io/ByteArrayOutputStream:close	()V
    //   103: aload_2
    //   104: invokevirtual 200	java/io/DataOutputStream:close	()V
    //   107: aload 12
    //   109: areturn
    //   110: astore 14
    //   112: aload 12
    //   114: areturn
    //   115: astore_3
    //   116: aconst_null
    //   117: astore_2
    //   118: aconst_null
    //   119: astore_1
    //   120: aload_1
    //   121: ifnull +7 -> 128
    //   124: aload_1
    //   125: invokevirtual 199	java/io/ByteArrayOutputStream:close	()V
    //   128: aload_2
    //   129: ifnull +7 -> 136
    //   132: aload_2
    //   133: invokevirtual 200	java/io/DataOutputStream:close	()V
    //   136: aload_3
    //   137: athrow
    //   138: astore 13
    //   140: goto -37 -> 103
    //   143: astore 10
    //   145: goto -64 -> 81
    //   148: astore 9
    //   150: goto -59 -> 91
    //   153: astore 5
    //   155: goto -27 -> 128
    //   158: astore 4
    //   160: goto -24 -> 136
    //   163: astore_3
    //   164: aconst_null
    //   165: astore_2
    //   166: goto -46 -> 120
    //   169: astore_3
    //   170: goto -50 -> 120
    //   173: astore 17
    //   175: aconst_null
    //   176: astore 7
    //   178: aconst_null
    //   179: astore 8
    //   181: goto -110 -> 71
    //   184: astore 16
    //   186: aload_1
    //   187: astore 8
    //   189: aconst_null
    //   190: astore 7
    //   192: goto -121 -> 71
    //
    // Exception table:
    //   from	to	target	type
    //   17	25	63	java/lang/Exception
    //   25	60	63	java/lang/Exception
    //   93	99	63	java/lang/Exception
    //   103	107	110	java/io/IOException
    //   0	8	115	finally
    //   99	103	138	java/io/IOException
    //   76	81	143	java/io/IOException
    //   86	91	148	java/io/IOException
    //   124	128	153	java/io/IOException
    //   132	136	158	java/io/IOException
    //   8	17	163	finally
    //   17	25	169	finally
    //   25	60	169	finally
    //   93	99	169	finally
    //   0	8	173	java/lang/Exception
    //   8	17	184	java/lang/Exception
  }

  public static int getCmdId(JceStruct paramJceStruct)
  {
    if (paramJceStruct == null)
      return -1;
    String str = paramJceStruct.getClass().getSimpleName();
    return JceCmd.convert(str.substring(0, -7 + str.length())).value();
  }

  public static ReqHead getReqHead(JceStruct paramJceStruct)
  {
    if (paramJceStruct == null)
      return null;
    ReqHead localReqHead = new ReqHead();
    localReqHead.requestId = GlobalUtil.getMemUUID();
    localReqHead.cmdId = getCmdId(paramJceStruct);
    localReqHead.qua = GlobalUtil.getInstance().getQUA();
    localReqHead.phoneGuid = GlobalUtil.getInstance().getPhoneGuid();
    localReqHead.terminal = GlobalUtil.getInstance().getPhoneTerminal();
    localReqHead.assistantAPILevel = GlobalUtil.getInstance().getQQDownloaderAPILevel();
    localReqHead.assistantVersionCode = GlobalUtil.getInstance().getQQDownloaderVersionCode();
    return localReqHead;
  }

  public static byte[] jceStructToUTF8Byte(JceStruct paramJceStruct)
  {
    if (paramJceStruct == null)
      return null;
    JceOutputStream localJceOutputStream = new JceOutputStream();
    localJceOutputStream.setServerEncoding("utf-8");
    paramJceStruct.writeTo(localJceOutputStream);
    return localJceOutputStream.toByteArray();
  }

  public static Response unpackPackage(byte[] paramArrayOfByte)
  {
    Response localResponse;
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length < 4))
      localResponse = null;
    while (true)
    {
      return localResponse;
      localResponse = new Response();
      try
      {
        JceInputStream localJceInputStream = new JceInputStream(paramArrayOfByte);
        localJceInputStream.setServerEncoding("utf-8");
        localResponse.readFrom(localJceInputStream);
        if (localResponse.head.ret == 0)
        {
          if ((0x2 & localResponse.head.encryptWithPack) == 2)
            localResponse.body = decrypt(localResponse.body, "ji*9^&43U0X-~./(".getBytes());
          if ((0x1 & localResponse.head.encryptWithPack) == 1)
            localResponse.body = ZipUtils.unzip(localResponse.body);
          GlobalUtil.getInstance().setPhoneGuid(localResponse.head.phoneGuid);
          return localResponse;
        }
      }
      catch (Exception localException)
      {
      }
    }
    return null;
  }

  public static JceStruct unpageageJceResponse(JceStruct paramJceStruct, byte[] paramArrayOfByte)
  {
    if ((paramJceStruct != null) && (paramArrayOfByte != null))
    {
      JceStruct localJceStruct = createFromRequest(paramJceStruct);
      if (localJceStruct != null)
        try
        {
          JceInputStream localJceInputStream = new JceInputStream(paramArrayOfByte);
          localJceInputStream.setServerEncoding("utf-8");
          localJceStruct.readFrom(localJceInputStream);
          return localJceStruct;
        }
        catch (Exception localException)
        {
          return null;
        }
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.protocol.ProtocolPackage
 * JD-Core Version:    0.6.2
 */