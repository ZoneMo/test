package com.tencent.mm.pluginsdk.model.app;

import android.graphics.Bitmap.CompressFormat;
import com.tencent.mm.a.c;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.sdk.modelmsg.WXAppExtendObject;
import com.tencent.mm.sdk.modelmsg.WXEmojiObject;
import com.tencent.mm.sdk.modelmsg.WXEmojiSharedObject;
import com.tencent.mm.sdk.modelmsg.WXFileObject;
import com.tencent.mm.sdk.modelmsg.WXImageObject;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.modelmsg.WXMusicObject;
import com.tencent.mm.sdk.modelmsg.WXTextObject;
import com.tencent.mm.sdk.modelmsg.WXVideoObject;
import com.tencent.mm.sdk.modelmsg.WXWebpageObject;
import com.tencent.mm.sdk.modelmsg.p;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.m;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.h;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.g;

public final class s
{
  public static int a(com.tencent.mm.j.b paramb, String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte)
  {
    String str1 = System.currentTimeMillis();
    boolean bool1 = cj.hX(paramString3);
    a locala = null;
    if (!bool1)
    {
      locala = a(str1, paramb, paramString3);
      if (locala == null)
        return 0 - j.qe();
    }
    ak localak = new ak();
    if ((paramArrayOfByte != null) && (paramArrayOfByte.length > 0))
      if (paramb.type != 2)
        break label337;
    long l;
    label337: for (boolean bool2 = true; ; bool2 = false)
    {
      String str2 = ag.Ba().a(paramArrayOfByte, bool2, Bitmap.CompressFormat.PNG);
      aa.d("MicroMsg.AppMsgLogic", j.qg() + " thumbData MsgInfo path:" + str2);
      if (!cj.hX(str2))
      {
        localak.uN(str2);
        aa.d("MicroMsg.AppMsgLogic", "new thumbnail saved, path" + str2);
      }
      if (locala != null)
        paramb.cgE = locala.gfy;
      localak.setContent(com.tencent.mm.j.b.b(paramb));
      localak.setStatus(1);
      localak.uK(paramString2);
      localak.G(bv.dA(paramString2));
      localak.bZ(1);
      localak.setType(p(paramb.type, paramb.bLY, paramb.cgT));
      l = be.uz().sw().v(localak);
      aa.d("MicroMsg.AppMsgLogic", j.qg() + " msginfo insert id: " + l);
      if (l >= 0L)
        break;
      aa.e("MicroMsg.AppMsgLogic", j.qg() + "insert msg failed :" + l);
      return 0 - j.qe();
    }
    aa.i("MicroMsg.AppMsgLogic", j.qe() + " new msg inserted to db , local id = " + l);
    localak.bT(l);
    com.tencent.mm.j.a locala1 = new com.tencent.mm.j.a();
    locala1.field_xml = localak.getContent();
    locala1.field_title = paramb.title;
    locala1.field_type = paramb.type;
    locala1.field_description = paramb.description;
    locala1.field_msgId = l;
    locala1.field_source = paramString1;
    ba.HD().b(locala1);
    if (locala != null)
    {
      locala.field_msgInfoId = l;
      locala.field_status = 101L;
      ba.HF().a(locala, new String[0]);
      ba.aqi().run();
      return 0;
    }
    ba.aqi();
    aw.bv(l);
    return 0;
  }

  public static int a(WXMediaMessage paramWXMediaMessage, String paramString1, String paramString2, String paramString3, int paramInt, String paramString4)
  {
    com.tencent.mm.j.b localb = new com.tencent.mm.j.b();
    localb.appId = paramString1;
    localb.appName = paramString2;
    localb.cgG = paramInt;
    String str1 = a(localb, paramWXMediaMessage, paramString4);
    aa.d("MicroMsg.AppMsgLogic", j.qg() + " content url:" + localb.url + " lowUrl:" + localb.cgB + " attachlen:" + localb.cgC + " attachid:" + localb.cgE + " attach file:" + str1);
    String str2 = System.currentTimeMillis();
    boolean bool1 = cj.hX(str1);
    a locala = null;
    if (!bool1)
    {
      locala = a(str2, localb, str1);
      if (locala == null)
        return 0 - j.qe();
    }
    ak localak = new ak();
    if ((paramWXMediaMessage.thumbData != null) && (paramWXMediaMessage.thumbData.length > 0))
      if (localb.type != 2)
        break label485;
    long l;
    label485: for (boolean bool2 = true; ; bool2 = false)
    {
      String str3 = ag.Ba().a(paramWXMediaMessage.thumbData, bool2, Bitmap.CompressFormat.PNG);
      aa.d("MicroMsg.AppMsgLogic", j.qg() + " thumbData MsgInfo path:" + str3);
      if (!cj.hX(str3))
      {
        localak.uN(str3);
        aa.d("MicroMsg.AppMsgLogic", "new thumbnail saved, path" + str3);
      }
      if (locala != null)
        localb.cgE = locala.gfy;
      localb.cgF = paramString4;
      localak.setContent(com.tencent.mm.j.b.b(localb));
      localak.setStatus(1);
      localak.uK(paramString3);
      localak.G(bv.dA(paramString3));
      localak.bZ(1);
      localak.setType(p(localb.type, localb.bLY, localb.cgT));
      l = be.uz().sw().v(localak);
      aa.d("MicroMsg.AppMsgLogic", j.qg() + " msginfo insert id: " + l);
      if (l >= 0L)
        break;
      aa.e("MicroMsg.AppMsgLogic", j.qg() + "insert msg failed :" + l);
      return 0 - j.qe();
    }
    aa.i("MicroMsg.AppMsgLogic", j.qe() + " new msg inserted to db , local id = " + l);
    localak.bT(l);
    com.tencent.mm.j.a locala1 = new com.tencent.mm.j.a();
    locala1.field_xml = localak.getContent();
    locala1.field_title = paramWXMediaMessage.title;
    locala1.field_type = paramWXMediaMessage.mediaObject.type();
    locala1.field_description = paramWXMediaMessage.description;
    locala1.field_msgId = l;
    locala1.field_source = paramString2;
    ba.HD().b(locala1);
    if (locala != null)
    {
      locala.field_msgInfoId = l;
      locala.field_status = 101L;
      ba.HF().a(locala, new String[0]);
      ba.aqi().run();
      return 0;
    }
    ba.aqi();
    aw.bv(l);
    return 0;
  }

  public static int a(WXMediaMessage paramWXMediaMessage, String paramString1, String paramString2, String paramString3, int paramInt, String paramString4, String paramString5)
  {
    com.tencent.mm.j.b localb = new com.tencent.mm.j.b();
    localb.appId = paramString1;
    localb.appName = paramString2;
    localb.cgG = paramInt;
    localb.bQs = paramString4;
    localb.bQt = paramString5;
    String str1 = a(localb, paramWXMediaMessage, null);
    aa.d("MicroMsg.AppMsgLogic", j.qg() + " content url:" + localb.url + " lowUrl:" + localb.cgB + " attachlen:" + localb.cgC + " attachid:" + localb.cgE + " attach file:" + str1);
    String str2 = System.currentTimeMillis();
    boolean bool1 = cj.hX(str1);
    a locala = null;
    if (!bool1)
    {
      locala = a(str2, localb, str1);
      if (locala == null)
        return 0 - j.qe();
    }
    ak localak = new ak();
    if ((paramWXMediaMessage.thumbData != null) && (paramWXMediaMessage.thumbData.length > 0))
      if (localb.type != 2)
        break label491;
    long l;
    label491: for (boolean bool2 = true; ; bool2 = false)
    {
      String str3 = ag.Ba().a(paramWXMediaMessage.thumbData, bool2, Bitmap.CompressFormat.PNG);
      aa.d("MicroMsg.AppMsgLogic", j.qg() + " thumbData MsgInfo path:" + str3);
      if (!cj.hX(str3))
      {
        localak.uN(str3);
        aa.d("MicroMsg.AppMsgLogic", "new thumbnail saved, path" + str3);
      }
      if (locala != null)
        localb.cgE = locala.gfy;
      localak.setContent(com.tencent.mm.j.b.b(localb));
      localak.setStatus(1);
      localak.uK(paramString3);
      localak.G(bv.dA(paramString3));
      localak.bZ(1);
      localak.setType(p(localb.type, localb.bLY, localb.cgT));
      l = be.uz().sw().v(localak);
      aa.d("MicroMsg.AppMsgLogic", j.qg() + " msginfo insert id: " + l);
      if (l >= 0L)
        break;
      aa.e("MicroMsg.AppMsgLogic", j.qg() + "insert msg failed :" + l);
      return 0 - j.qe();
    }
    aa.i("MicroMsg.AppMsgLogic", j.qe() + " new msg inserted to db , local id = " + l);
    localak.bT(l);
    com.tencent.mm.j.a locala1 = new com.tencent.mm.j.a();
    locala1.field_xml = localak.getContent();
    locala1.field_title = paramWXMediaMessage.title;
    locala1.field_type = paramWXMediaMessage.mediaObject.type();
    locala1.field_description = paramWXMediaMessage.description;
    locala1.field_msgId = l;
    locala1.field_source = paramString2;
    ba.HD().b(locala1);
    if (locala != null)
    {
      locala.field_msgInfoId = l;
      locala.field_status = 101L;
      ba.HF().a(locala, new String[0]);
      ba.aqi().run();
      return 0;
    }
    ba.aqi();
    aw.bv(l);
    return 0;
  }

  private static a a(String paramString1, com.tencent.mm.j.b paramb, String paramString2)
  {
    aa.d("MicroMsg.AppMsgLogic", j.qg() + " buildUploadAttachInfo clientAppDataId:" + paramString1 + " attach file :" + paramString2);
    String str = paramString2.replace("//", "/");
    if (str.startsWith(h.ggu))
    {
      aa.b("MicroMsg.AppMsgLogic", "Error attach path:%s", new Object[] { str });
      return null;
    }
    a locala = new a();
    locala.field_totalLen = paramb.cgC;
    locala.field_fileFullPath = paramString2;
    locala.field_sdkVer = paramb.sdkVer;
    locala.field_appId = paramb.appId;
    locala.field_clientAppDataId = paramString1;
    locala.field_type = paramb.type;
    locala.field_status = 200L;
    locala.field_isUpload = true;
    locala.field_createTime = cj.FD();
    locala.field_lastModifyTime = cj.FC();
    locala.field_mediaSvrId = cj.FD();
    ba.HF().b(locala);
    aa.d("MicroMsg.AppMsgLogic", j.qg() + " buildUploadAttachInfo file:" + paramString2 + " rowid:" + locala.gfy);
    if (locala.gfy < 0L)
    {
      aa.e("MicroMsg.AppMsgLogic", j.qg() + " uploadAttach insert appattach info failed :" + locala.gfy);
      return null;
    }
    return locala;
  }

  private static String a(com.tencent.mm.j.b paramb, WXMediaMessage paramWXMediaMessage, String paramString)
  {
    aa.d("MicroMsg.AppMsgLogic", j.qg() + "mediaMessageToContent sdkver:" + paramWXMediaMessage.sdkVer + " title:" + paramWXMediaMessage.title + " desc:" + paramWXMediaMessage.description + " type:" + paramWXMediaMessage.mediaObject.type());
    paramb.sdkVer = paramWXMediaMessage.sdkVer;
    paramb.title = paramWXMediaMessage.title;
    paramb.description = paramWXMediaMessage.description;
    paramb.mediaTagName = paramWXMediaMessage.mediaTagName;
    paramb.messageAction = paramWXMediaMessage.messageAction;
    paramb.messageExt = paramWXMediaMessage.messageExt;
    p localp = paramWXMediaMessage.mediaObject;
    paramb.type = localp.type();
    if (paramb.type == 7)
    {
      WXAppExtendObject localWXAppExtendObject = (WXAppExtendObject)localp;
      paramb.extInfo = localWXAppExtendObject.extInfo;
      if (!cj.A(localWXAppExtendObject.fileData))
      {
        aa.d("MicroMsg.AppMsgLogic", j.qg() + " fileData:" + localWXAppExtendObject.fileData.length);
        paramb.cgC = localWXAppExtendObject.fileData.length;
        return as(localWXAppExtendObject.fileData);
      }
      paramb.cgC = c.ar(localWXAppExtendObject.filePath);
      aa.d("MicroMsg.AppMsgLogic", j.qg() + " read file:" + localWXAppExtendObject.filePath + " len:" + paramb.cgC);
      if (paramb.cgC > 0)
      {
        paramb.cgD = c.at(localWXAppExtendObject.filePath);
        return localWXAppExtendObject.filePath;
      }
      return null;
    }
    if (paramb.type == 6)
    {
      WXFileObject localWXFileObject = (WXFileObject)localp;
      if (!cj.A(localWXFileObject.fileData))
      {
        aa.d("MicroMsg.AppMsgLogic", j.qg() + " fileData:" + localWXFileObject.fileData.length);
        paramb.cgC = localWXFileObject.fileData.length;
        return as(localWXFileObject.fileData);
      }
      paramb.cgC = c.ar(localWXFileObject.filePath);
      aa.d("MicroMsg.AppMsgLogic", j.qg() + " read file:" + localWXFileObject.filePath + " len:" + paramb.cgC);
      if (paramb.cgC > 0)
      {
        paramb.cgD = c.at(localWXFileObject.filePath);
        return localWXFileObject.filePath;
      }
      return null;
    }
    if (paramb.type == 2)
    {
      WXImageObject localWXImageObject = (WXImageObject)localp;
      if (!cj.A(localWXImageObject.imageData))
      {
        aa.d("MicroMsg.AppMsgLogic", j.qg() + " fileData:" + localWXImageObject.imageData.length);
        paramb.cgC = localWXImageObject.imageData.length;
        return as(localWXImageObject.imageData);
      }
      if (!cj.hX(localWXImageObject.imagePath))
      {
        paramb.cgC = c.ar(localWXImageObject.imagePath);
        aa.d("MicroMsg.AppMsgLogic", j.qg() + " read file:" + localWXImageObject.imagePath + " len:" + paramb.cgC);
        if (paramb.cgC > 0)
        {
          paramb.cgD = c.at(localWXImageObject.imagePath);
          return localWXImageObject.imagePath;
        }
        return null;
      }
      paramb.url = localWXImageObject.imageUrl;
      return null;
    }
    if (paramb.type == 3)
    {
      WXMusicObject localWXMusicObject = (WXMusicObject)localp;
      paramb.url = localWXMusicObject.musicUrl;
      paramb.cgB = localWXMusicObject.musicLowBandUrl;
      paramb.cgQ = localWXMusicObject.musicDataUrl;
      paramb.cgR = localWXMusicObject.musicLowBandDataUrl;
      return null;
    }
    if (paramb.type == 4)
    {
      WXVideoObject localWXVideoObject = (WXVideoObject)localp;
      paramb.url = localWXVideoObject.videoUrl;
      paramb.cgB = localWXVideoObject.videoLowBandUrl;
      return null;
    }
    if (paramb.type == 5)
    {
      paramb.url = ((WXWebpageObject)localp).webpageUrl;
      return null;
    }
    if (paramb.type == 1)
    {
      paramb.title = ((WXTextObject)localp).text;
      return null;
    }
    if (paramb.type == 8)
    {
      WXEmojiObject localWXEmojiObject = (WXEmojiObject)localp;
      if (!cj.A(localWXEmojiObject.emojiData))
      {
        aa.d("MicroMsg.AppMsgLogic", j.qg() + " fileData:" + localWXEmojiObject.emojiData.length);
        paramb.cgC = localWXEmojiObject.emojiData.length;
        return as(localWXEmojiObject.emojiData);
      }
      if (!cj.hX(localWXEmojiObject.emojiPath))
      {
        paramb.cgC = c.ar(localWXEmojiObject.emojiPath);
        aa.d("MicroMsg.AppMsgLogic", j.qg() + " read file:" + localWXEmojiObject.emojiPath + " len:" + paramb.cgC);
        if (paramb.cgC > 0)
        {
          paramb.cgD = c.at(localWXEmojiObject.emojiPath);
          return localWXEmojiObject.emojiPath;
        }
        return null;
      }
      paramb.cgF = paramString;
    }
    do
    {
      return null;
      if (paramb.type == 15)
      {
        WXEmojiSharedObject localWXEmojiSharedObject2 = (WXEmojiSharedObject)localp;
        paramb.thumburl = localWXEmojiSharedObject2.thumburl;
        paramb.chc = localWXEmojiSharedObject2.packageflag;
        paramb.chb = localWXEmojiSharedObject2.packageid;
        paramb.bLY = 8;
        paramb.url = localWXEmojiSharedObject2.url;
        return null;
      }
    }
    while (paramb.type != 13);
    WXEmojiSharedObject localWXEmojiSharedObject1 = (WXEmojiSharedObject)localp;
    paramb.thumburl = localWXEmojiSharedObject1.thumburl;
    paramb.chc = localWXEmojiSharedObject1.packageflag;
    paramb.chb = localWXEmojiSharedObject1.packageid;
    paramb.bLY = 8;
    paramb.url = localWXEmojiSharedObject1.url;
    return null;
  }

  public static String a(String paramString1, long paramLong, int paramInt1, String paramString2, String paramString3, int paramInt2)
  {
    a locala = new a();
    locala.field_fileFullPath = paramString1;
    locala.field_appId = paramString2;
    locala.field_sdkVer = paramInt1;
    locala.field_mediaSvrId = paramString3;
    locala.field_totalLen = paramInt2;
    locala.field_status = 101L;
    locala.field_isUpload = false;
    locala.field_createTime = cj.FD();
    locala.field_lastModifyTime = cj.FC();
    locala.field_msgInfoId = paramLong;
    locala.field_netTimes = 0L;
    ba.HF().b(locala);
    return paramString3;
  }

  private static String as(byte[] paramArrayOfByte)
  {
    if (cj.A(paramArrayOfByte))
    {
      aa.e("MicroMsg.AppMsgLogic", j.qg() + " attachBuf is null");
      return null;
    }
    String str = be.uz().sQ() + "ua_" + cj.FD();
    aa.d("MicroMsg.AppMsgLogic", j.qg() + " buildUploadAttachInfo file:" + str);
    if (c.a(str, paramArrayOfByte, paramArrayOfByte.length) != 0)
    {
      aa.e("MicroMsg.AppMsgLogic", j.qg() + " writeFile error file:" + str);
      return null;
    }
    return str;
  }

  public static a b(String paramString1, long paramLong, int paramInt1, String paramString2, String paramString3, int paramInt2)
  {
    a locala = new a();
    locala.field_fileFullPath = paramString1;
    locala.field_appId = paramString2;
    locala.field_sdkVer = paramInt1;
    locala.field_mediaSvrId = paramString3;
    locala.field_totalLen = paramInt2;
    locala.field_status = 101L;
    locala.field_isUpload = false;
    locala.field_createTime = cj.FD();
    locala.field_lastModifyTime = cj.FC();
    locala.field_msgInfoId = paramLong;
    locala.field_netTimes = 0L;
    return locala;
  }

  public static String b(long paramLong, String paramString1, String paramString2)
  {
    com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(paramString1);
    if (localb == null)
      return null;
    String str2;
    if (paramString2 == null)
    {
      StringBuilder localStringBuilder = new StringBuilder().append(h.cfF);
      if (cj.hW(localb.title).length() > 0)
      {
        str2 = localb.title;
        str1 = str2;
        if (c.as(str1))
          str1 = h.cfF + cj.FC() + localb.title;
        if ((cj.hX(localb.cgD)) || (str1.endsWith(localb.cgD)));
      }
    }
    for (String str1 = str1 + "." + localb.cgD; ; str1 = paramString2)
    {
      return a(str1, paramLong, localb.sdkVer, localb.appId, localb.cgE, localb.cgC);
      str2 = "da_" + cj.FD();
      break;
    }
  }

  public static void bu(long paramLong)
  {
    ba.HF().br(paramLong);
    a locala = new a();
    ba.HF().b(paramLong, locala);
    if (locala.field_msgInfoId <= 0L);
    ak localak;
    do
    {
      return;
      localak = be.uz().sw().bU(locala.field_msgInfoId);
    }
    while ((localak == null) || (localak.Bo() != locala.field_msgInfoId));
    localak.setStatus(5);
    be.uz().sw().a(localak.Bo(), localak);
  }

  public static int e(long paramLong, String paramString)
  {
    ak localak = be.uz().sw().bU(paramLong);
    if ((localak == null) || (localak.Bo() != paramLong))
    {
      aa.e("MicroMsg.AppMsgLogic", j.qg() + " getmsgFailed id:" + paramLong);
      return 0 - j.qe();
    }
    com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(localak.getContent());
    if (localb == null)
    {
      aa.e("MicroMsg.AppMsgLogic", j.qg() + " getmsgFailed id:" + paramLong);
      return 0 - j.qe();
    }
    localb.cgE = paramString;
    localak.setContent(com.tencent.mm.j.b.b(localb));
    localak.cL(256);
    be.uz().sw().a(localak.Bo(), localak);
    com.tencent.mm.j.a locala = ba.HD().bt(paramLong);
    locala.field_xml = localak.getContent();
    ba.HD().a(locala, new String[] { "msgId" });
    a locala1 = ba.HF().bs(paramLong);
    locala1.field_mediaSvrId = paramString;
    locala1.field_offset = locala1.field_totalLen;
    ba.HF().a(locala1, new String[0]);
    return 0;
  }

  public static int kb(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return paramInt;
    case -1879048191:
    case -1879048190:
    case -1879048189:
    case -1879048186:
    case 1048625:
    case 16777265:
    case 268435505:
    case 285212721:
    case 301989937:
    case 335544369:
    case 402653233:
    }
    return 49;
  }

  public static int p(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = -1879048186;
    aa.d("MicroMsg.AppMsgLogic", "getLocalAppMsgType showType " + paramInt2 + " atype " + paramInt1 + ", itemShowType = " + paramInt3);
    if (paramInt3 == 4)
    {
      i = 318767153;
      return i;
    }
    switch (paramInt2)
    {
    case 17:
    default:
      switch (paramInt1)
      {
      case 17:
      default:
        return 49;
      case 2:
      case 1:
      case 8:
      case 10:
      case 14:
      case 13:
      }
    case 1:
      return 285212721;
    case 2:
      return 301989937;
    case 3:
      return -1879048189;
    case 4:
      return -1879048190;
    case 5:
    }
    return -1879048191;
    return 268435505;
    return 16777265;
    return 1048625;
    return 335544369;
    return 402653233;
    return 369098801;
  }

  public static boolean qq(String paramString)
  {
    if (cj.hX(paramString));
    while (paramString.equals("0:0"))
      return false;
    return true;
  }

  public static void qr(String paramString)
  {
    a locala = ba.HF().qk(paramString);
    if (locala != null)
    {
      c.deleteFile(locala.field_fileFullPath);
      ba.HF().b(locala, new String[] { "mediaId" });
    }
  }

  public static int qs(String paramString)
  {
    com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(paramString);
    if (localb == null)
      return -1;
    if (!qq(localb.cgE))
      return -1;
    a locala = new a();
    long l = cj.getLong(localb.cgE, -1L);
    if (l != -1L)
    {
      ba.HF().b(l, locala);
      if (locala.gfy != l)
      {
        locala = ba.HF().qk(localb.cgE);
        if ((locala == null) || (!locala.field_mediaSvrId.equals(localb.cgE)))
          return -1;
      }
    }
    else
    {
      locala = ba.HF().qk(localb.cgE);
      if ((locala == null) || (!locala.field_mediaSvrId.equals(localb.cgE)))
        return -1;
    }
    if (locala.field_totalLen == 0L)
      return -1;
    return (int)(100L * locala.field_offset / locala.field_totalLen);
  }

  public static void s(ak paramak)
  {
    com.tencent.mm.j.b localb1 = com.tencent.mm.j.b.bR(paramak.getContent());
    if (localb1 == null)
    {
      aa.e("MicroMsg.AppMsgLogic", "resend app message error: app content null");
      return;
    }
    a locala = ba.HF().qk(localb1.cgE);
    String str1 = "";
    if ((locala != null) && (locala.field_fileFullPath != null) && (!locala.field_fileFullPath.equals("")))
    {
      str1 = be.uz().sQ() + "da_" + cj.FD();
      m.f(locala.field_fileFullPath, str1, false);
    }
    String str2 = paramak.ot();
    Object localObject = null;
    String str3;
    if (str2 != null)
    {
      boolean bool = paramak.ot().equals("");
      localObject = null;
      if (!bool)
        str3 = ag.Ba().fX(paramak.ot());
    }
    try
    {
      byte[] arrayOfByte = c.g(str3, 0, c.ar(str3));
      localObject = arrayOfByte;
      com.tencent.mm.j.b localb2 = com.tencent.mm.j.b.a(localb1);
      a(localb2, localb1.appName, paramak.aCl(), str1, localObject);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localObject = null;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.s
 * JD-Core Version:    0.6.2
 */