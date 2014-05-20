package com.tencent.mm.pluginsdk.model.downloader;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ah;
import com.tencent.mm.storage.ai;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class FileDownloadManger
{
  private static Set fih = new HashSet();

  static
  {
    SharedPreferences localSharedPreferences = al.getContext().getSharedPreferences("off_line_download_ids", 0);
    if (localSharedPreferences != null)
    {
      Map localMap = localSharedPreferences.getAll();
      if ((localMap != null) && (localMap.size() > 0))
      {
        Iterator localIterator = localMap.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if ((localEntry != null) && (!cj.hX((String)localEntry.getKey())))
            try
            {
              fih.add(Long.valueOf(Long.parseLong((String)localEntry.getKey())));
            }
            catch (Exception localException)
            {
              aa.e("MicroMsg.FileDownloadManger", "parse download task failed: " + localException.toString());
            }
        }
      }
    }
  }

  public static long a(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt, String paramString5)
  {
    return a(paramString1, paramString2, paramString3, paramString4, paramInt, true, false, paramString5);
  }

  private static long a(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt, boolean paramBoolean1, boolean paramBoolean2, String paramString5)
  {
    aa.d("MicroMsg.FileDownloadManger", " downloadUrl: [" + paramString1 + "] downloadFileName: [" + paramString2 + "] downloadKey : [" + paramString3 + "] md5: [" + paramString4 + "]");
    if (cj.hX(paramString4))
    {
      aa.e("MicroMsg.FileDownloadManger", "md5 should not null");
      return -2L;
    }
    if (cj.hX(paramString1))
    {
      aa.e("MicroMsg.FileDownloadManger", "download url is null");
      return -2L;
    }
    if (cj.hX(paramString2))
    {
      aa.e("MicroMsg.FileDownloadManger", "download fileaName is null");
      return -2L;
    }
    l locall1 = m.aqu();
    Object localObject;
    label191: long l;
    l locall2;
    if ((cj.hX(paramString1)) || ((!paramString1.startsWith("http")) && (!paramString1.startsWith("https"))))
    {
      localObject = null;
      if (localObject == null)
        break label389;
      if (!cj.hX(paramString2))
        ((k)localObject).gR(paramString2);
      if (!cj.hX(paramString3))
        break label352;
      ((k)localObject).setKey(paramString1.hashCode());
      if (!cj.hX(paramString4))
        ((k)localObject).qx(paramString4);
      ((k)localObject).kc(paramInt);
      ((k)localObject).cd(paramBoolean1);
      ((k)localObject).ce(paramBoolean2);
      ((k)localObject).qy(paramString5);
      l = locall1.a((k)localObject);
      if (l != -4L)
        break label386;
      aa.e("MicroMsg.FileDownloadManger", "add task by system downloadmanager failed, change to download the file by browser");
      locall2 = m.aqv();
      if ((!cj.hX(paramString1)) && ((paramString1.startsWith("http")) || (paramString1.startsWith("https"))))
        break label363;
    }
    label352: label363: for (h localh = null; ; localh = new h(paramString1))
    {
      if (localh != null)
        break label376;
      aa.e("MicroMsg.FileDownloadManger", "get download request failed, download url is null or not a http or https url");
      return -2L;
      if (Build.VERSION.SDK_INT >= 9)
      {
        localObject = new g(paramString1);
        break;
      }
      localObject = new h(paramString1);
      break;
      ((k)localObject).setKey(paramString3);
      break label191;
    }
    label376: return locall2.a(localh);
    label386: return l;
    label389: aa.e("MicroMsg.FileDownloadManger", "get download request failed, download url is null or not a http or https url");
    return -2L;
  }

  public static void a(long paramLong, c paramc)
  {
    if ((!be.se()) || (be.uG()))
    {
      aa.d("MicroMsg.FileDownloadManger", "no user login, wait next login");
      paramc.e(" ", " ", true);
    }
    File localFile;
    String str;
    do
    {
      ah localah;
      do
      {
        do
        {
          return;
          if (paramc == null)
          {
            aa.e("MicroMsg.FileDownloadManger", "callback should no null");
            return;
          }
          localah = by(paramLong);
          if (a(localah))
            break;
          aa.e("MicroMsg.FileDownloadManger", "get saved downloaditem failed: " + paramLong);
          bA(localah.field_downloadId);
        }
        while (paramc == null);
        paramc.e(localah.field_md5, "", false);
        return;
        localFile = new File(localah.field_filePath);
        if (localFile.exists())
          break;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = localah.field_filePath;
        aa.e("MicroMsg.FileDownloadManger", "file not exists:[%s], check the download uri", arrayOfObject1);
        if (!cj.hX(localah.field_filePathFromURI))
          localFile = new File(localah.field_filePathFromURI);
        if (localFile.exists())
          break;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localah.field_downloadUrl;
        aa.e("MicroMsg.FileDownloadManger", "file not esists:[%s] from downloadurl", arrayOfObject2);
      }
      while (paramc == null);
      paramc.e(localah.field_md5, "", false);
      return;
      str = localah.field_md5;
      if (!cj.hX(str))
        break;
    }
    while (paramc == null);
    paramc.e(str, "", false);
    return;
    an.i(new a(str, paramc, localFile));
  }

  public static void a(k paramk, long paramLong)
  {
    if ((!be.se()) || (be.uG()))
    {
      aa.d("MicroMsg.FileDownloadManger", "no user login, wait next login to deal this download :" + paramLong);
      return;
    }
    if (paramk == null)
    {
      aa.e("MicroMsg.FileDownloadManger", "updateDownloadStatus failed: request is null");
      return;
    }
    ah localah1 = be.uz().sy().by(paramLong);
    e locale = g(al.getContext(), paramLong);
    if (localah1 == null)
    {
      ah localah2 = new ah();
      localah2.field_downloadId = paramLong;
      localah2.field_downloadKey = paramk.getKey();
      localah2.field_fileName = paramk.getFileName();
      localah2.field_filePath = paramk.aqn();
      localah2.field_isNotified = 0;
      localah2.field_md5 = paramk.aqp();
      localah2.field_downloadUrl = paramk.aqo().toString();
      localah2.field_status = 2;
      localah2.field_source = paramk.aqq();
      int i;
      int j;
      if (paramk.aqr())
      {
        i = 1;
        localah2.field_autoInstall = i;
        boolean bool1 = paramk.aqs();
        j = 0;
        if (!bool1)
          break label310;
        label203: localah2.field_isGameFile = j;
        localah2.field_fromAppId = paramk.aqt();
        if (locale.fim == null)
          break label316;
        localah2.field_filePathFromURI = locale.fim.getPath();
      }
      while (true)
      {
        boolean bool2 = be.uz().sy().b(localah2);
        aa.i("MicroMsg.FileDownloadManger", "insert downloadinfo: " + paramLong + ", ret = " + bool2 + ", status=2, savePath:" + paramk.aqn());
        return;
        i = 0;
        break;
        label310: j = 1;
        break label203;
        label316: aa.d("MicroMsg.FileDownloadManger", "query download uri is null");
      }
    }
    localah1.field_status = 2;
    boolean bool3 = be.uz().sy().a(localah1, new String[0]);
    aa.i("MicroMsg.FileDownloadManger", "update downloadinfo: " + paramLong + ", ret = " + bool3 + ", status=2, savePath:" + paramk.aqn());
  }

  public static void a(n paramn)
  {
    m.aqu().d(paramn);
  }

  private static boolean a(ah paramah)
  {
    if (paramah == null)
      aa.i("MicroMsg.FileDownloadManger", "filedownload info is null");
    do
    {
      return false;
      if ((!cj.hX(paramah.field_filePath)) && (com.tencent.mm.a.c.as(paramah.field_filePath)))
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = paramah.field_filePath;
        aa.d("MicroMsg.FileDownloadManger", "file exist:field_filePath [%s]", arrayOfObject2);
        return true;
      }
    }
    while ((cj.hX(paramah.field_filePathFromURI)) || (!com.tencent.mm.a.c.as(paramah.field_filePathFromURI)));
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = paramah.field_filePathFromURI;
    aa.d("MicroMsg.FileDownloadManger", "file exist:field_filePathFromURI [%s]", arrayOfObject1);
    return true;
  }

  public static List aX(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = be.uz().sy().aBQ();
    if (localCursor == null)
      return localArrayList;
    if (localCursor.moveToFirst());
    while (true)
    {
      ah localah = new ah();
      localah.convertFrom(localCursor);
      e locale;
      if ((!cj.hX(localah.field_downloadKey)) && (localah.field_downloadKey.startsWith("wx")))
      {
        if (!cj.hX(localah.field_filePath))
        {
          boolean bool2 = com.tencent.mm.a.c.as(localah.field_filePath);
          locale = null;
          if (bool2);
        }
        else
        {
          boolean bool1 = cj.hX(localah.field_filePathFromURI);
          locale = null;
          if (bool1)
          {
            locale = g(paramContext, localah.field_downloadId);
            if (locale.fim != null)
            {
              localah.field_filePathFromURI = locale.fim.getPath();
              Object[] arrayOfObject5 = new Object[1];
              arrayOfObject5[0] = localah.field_fileName;
              aa.d("MicroMsg.FileDownloadManger", "get download successful task: [%s]", arrayOfObject5);
              be.uz().sy().a(localah, new String[0]);
              Object[] arrayOfObject6 = new Object[1];
              arrayOfObject6[0] = locale.fim.getPath();
              aa.d("MicroMsg.FileDownloadManger", "update local downloadinfo filepath from uri:[%s]", arrayOfObject6);
            }
          }
        }
        if (a(localah))
          break label325;
        if (locale == null)
          locale = g(paramContext, localah.field_downloadId);
        aa.d("MicroMsg.FileDownloadManger", "download filepath is null or file not exist" + localah.field_filePath);
        if (locale.status == 0)
        {
          Object[] arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = localah.field_fileName;
          aa.d("MicroMsg.FileDownloadManger", "query from content provider download task has been deleted, delete this task, wait another download: [%s]", arrayOfObject4);
          be.uz().sy().b(localah, new String[0]);
        }
      }
      while (!localCursor.moveToNext())
      {
        if (localCursor != null)
          localCursor.close();
        return localArrayList;
        label325: if (localah.field_status == 8)
        {
          if (!localArrayList.contains(localah.field_downloadKey))
            localArrayList.add(localah.field_downloadKey);
        }
        else
        {
          if (locale == null)
            locale = g(paramContext, localah.field_downloadId);
          if (locale.status == 8)
          {
            if (!localArrayList.contains(localah.field_downloadKey))
              localArrayList.add(localah.field_downloadKey);
            localah.field_status = 8;
            Object[] arrayOfObject3 = new Object[1];
            arrayOfObject3[0] = localah.field_fileName;
            aa.d("MicroMsg.FileDownloadManger", "get download successful task: [%s]", arrayOfObject3);
            be.uz().sy().a(localah, new String[0]);
          }
          else if ((locale.status == 16) || (locale.status == 0))
          {
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = localah.field_fileName;
            aa.d("MicroMsg.FileDownloadManger", "douwnload task failed, delete this task, wait another download: [%s]", arrayOfObject1);
            be.uz().sy().b(localah, new String[0]);
          }
          else
          {
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = Integer.valueOf(locale.status);
            aa.d("MicroMsg.FileDownloadManger", "download from content provider status:[%d]", arrayOfObject2);
          }
        }
      }
    }
  }

  public static void b(n paramn)
  {
    m.aqu().c(paramn);
  }

  public static int bA(long paramLong)
  {
    if (paramLong < 0L)
    {
      aa.e("MicroMsg.FileDownloadManger", "invaild downloadid: " + paramLong);
      return -1;
    }
    return m.aqu().bA(paramLong);
  }

  public static boolean bw(long paramLong)
  {
    if (paramLong <= 0L)
      aa.e("MicroMsg.FileDownloadManger", "download id is not avaiable");
    String str;
    do
    {
      return false;
      if (!fih.contains(Long.valueOf(paramLong)))
        break;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong);
      aa.d("MicroMsg.FileDownloadManger", "offline download task:[%d]", arrayOfObject);
      str = g(al.getContext(), paramLong).fim.getPath();
    }
    while ((cj.hX(str)) || (!com.tencent.mm.a.c.as(str)));
    aa.d("MicroMsg.FileDownloadManger", "file exist:[%s]", new Object[] { str });
    return true;
    return a(by(paramLong));
  }

  public static void bx(long paramLong)
  {
    if ((!be.se()) || (be.uG()))
    {
      aa.d("MicroMsg.FileDownloadManger", "no user login, wait next login to deal this download :" + paramLong + ", nofity: 1");
      return;
    }
    ah localah = be.uz().sy().by(paramLong);
    if (localah == null)
    {
      aa.e("MicroMsg.FileDownloadManger", "query download info failed: " + paramLong);
      return;
    }
    localah.field_status = 8;
    localah.field_isNotified = 1;
    boolean bool = be.uz().sy().a(localah, new String[0]);
    aa.i("MicroMsg.FileDownloadManger", "update downloadinfo: " + paramLong + ", ret = " + bool + ", status=8, notify: 1");
  }

  public static ah by(long paramLong)
  {
    boolean bool1 = be.se();
    ah localah = null;
    if (bool1)
    {
      boolean bool2 = be.uG();
      localah = null;
      if (!bool2)
        localah = be.uz().sy().by(paramLong);
    }
    if (localah == null)
      localah = new ah();
    return localah;
  }

  public static void bz(long paramLong)
  {
    if ((!be.se()) || (be.uG()))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong);
      aa.b("MicroMsg.FileDownloadManger", "account not ready, ignore delte download file: [%d]", arrayOfObject);
      return;
    }
    ah localah = be.uz().sy().by(paramLong);
    if (localah == null)
    {
      aa.d("MicroMsg.FileDownloadManger", "no task added or has been deleted:" + paramLong);
      return;
    }
    if (!cj.hX(localah.field_filePath))
      com.tencent.mm.a.c.deleteFile(localah.field_filePath);
    be.uz().sy().b(localah, new String[0]);
  }

  public static long d(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    long l = t(paramString1, paramString2, paramString3);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(l);
    aa.d("MicroMsg.FileDownloadManger", "add download task with out login:[%d]", arrayOfObject);
    if (l > 0L)
    {
      fih.add(Long.valueOf(l));
      paramContext.getSharedPreferences("off_line_download_ids", 0).edit().putLong(String.valueOf(l), l).commit();
    }
    return l;
  }

  public static long g(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return a(paramString1, paramString2, paramString3, paramString4, 0, false, true, paramString3);
  }

  public static e g(Context paramContext, long paramLong)
  {
    e locale = new e();
    if (Build.VERSION.SDK_INT < 9)
    {
      locale.status = -1;
      return locale;
    }
    Cursor localCursor = new d(paramContext).bB(paramLong);
    if (localCursor == null)
    {
      locale.status = 0;
      return locale;
    }
    if (localCursor == null)
    {
      aa.e("MicroMsg.FileDownloadManger", "query download status failed: cursor is null");
      return locale;
    }
    int i;
    int j;
    int k;
    int m;
    int n;
    if (localCursor.moveToFirst())
    {
      i = localCursor.getColumnIndex("status");
      j = localCursor.getColumnIndex("local_uri");
      k = localCursor.getColumnIndex("reason");
      m = localCursor.getColumnIndex("bytes_so_far");
      n = localCursor.getColumnIndex("total_size");
      if (i == -1);
    }
    try
    {
      locale.status = localCursor.getInt(i);
      if (j != -1)
      {
        String str = localCursor.getString(j);
        if (cj.hX(str))
          break label330;
        aa.d("MicroMsg.FileDownloadManger", "get download uri: [%s]", new Object[] { str });
        locale.fim = Uri.parse(str);
      }
      while (true)
      {
        if (k != -1)
        {
          int i1 = localCursor.getInt(k);
          aa.d("MicroMsg.FileDownloadManger", "download failed: reason: " + i1);
          if (i1 == 1009)
            locale.status = 8;
        }
        if (m != -1)
          locale.fin = localCursor.getLong(m);
        if (n != -1)
          locale.fio = localCursor.getLong(n);
        localCursor.close();
        aa.i("MicroMsg.FileDownloadManger", "FileDownloadQueryItem result: " + locale.toString());
        return locale;
        label330: aa.e("MicroMsg.FileDownloadManger", "get download uri failed");
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localException.toString();
        aa.b("MicroMsg.FileDownloadManger", "query download info failed: [%s]", arrayOfObject);
        locale.status = 16;
        locale.fim = null;
      }
    }
  }

  public static ah qv(String paramString)
  {
    ah localah = new ah();
    if ((!be.se()) || (be.uG()))
      aa.b("MicroMsg.FileDownloadManger", "getDownloadInfo account not ready, ignore this query: [%s]", new Object[] { paramString });
    do
    {
      return localah;
      localah = be.uz().sy().qv(paramString);
    }
    while (localah != null);
    return new ah();
  }

  public static void qw(String paramString)
  {
    ah localah = qv(paramString);
    if (localah.field_downloadId > 0L)
    {
      bA(localah.field_downloadId);
      return;
    }
    aa.e("MicroMsg.FileDownloadManger", "removeDownloadTask failed: get downloadinfo faild : [%s]", new Object[] { paramString });
  }

  public static long s(String paramString1, String paramString2, String paramString3)
  {
    return t(paramString1, paramString2, paramString3);
  }

  private static long t(String paramString1, String paramString2, String paramString3)
  {
    return a(paramString1, paramString2, null, paramString3, 0, true, false, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.downloader.FileDownloadManger
 * JD-Core Version:    0.6.2
 */