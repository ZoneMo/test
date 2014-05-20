package com.tencent.mm.ai;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Looper;
import com.tencent.mm.a.c;
import com.tencent.mm.a.f;
import com.tencent.mm.ap.i;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.compatible.g.k;
import com.tencent.mm.sdk.e.am;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import java.io.RandomAccessFile;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import junit.framework.Assert;

public final class r
{
  private static long cBe = 0L;
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS videoinfo2 ( filename text  PRIMARY KEY , clientid text  , msgsvrid int  , netoffset int  , filenowsize int  , totallen int  , thumbnetoffset int  , thumblen int  , status int  , createtime long  , lastmodifytime long  , downloadtime long  , videolength int  , msglocalid int  , nettimes int  , cameratype int  , user text  , human text  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) ", "CREATE TABLE IF NOT EXISTS videoinfo ( filename text  PRIMARY KEY , clientid text  , msgsvrid int  , netoffset int  , filenowsize int  , totallen int  , thumbnetoffset int  , thumblen int  , status int  , createtime long  , lastmodifytime long  , downloadtime long  , videolength int  , msglocalid int  , nettimes int  , cameratype int  , user text  , human text  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) ", "insert into videoinfo2 select * from videoinfo ;", "delete from videoinfo ;" };
  private String cBd = null;
  private i cjB;
  private am ckD = new s(this);

  public r(i parami, String paramString)
  {
    this.cjB = parami;
    this.cBd = paramString;
  }

  public static int a(String paramString, int paramInt, byte[] paramArrayOfByte)
  {
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.VideoInfoStorage", "ERR:" + j.qg() + " invalid fileName");
      return 0 - j.qe();
    }
    if (paramInt < 0)
    {
      aa.e("MicroMsg.VideoInfoStorage", "ERR:" + j.qg() + "[" + paramString + "]  invalid startOffset:" + paramInt);
      return 0 - j.qe();
    }
    if (cj.A(paramArrayOfByte))
    {
      aa.e("MicroMsg.VideoInfoStorage", "ERR:" + j.qg() + "[" + paramString + "]  invalid writeBuf");
      return 0 - j.qe();
    }
    k localk = new k();
    try
    {
      RandomAccessFile localRandomAccessFile = new RandomAccessFile(paramString, "rw");
      long l1 = localk.qh();
      localRandomAccessFile.seek(paramInt);
      long l2 = localk.qh();
      localRandomAccessFile.write(paramArrayOfByte, 0, paramArrayOfByte.length);
      long l3 = localk.qh();
      int i = (int)localRandomAccessFile.getFilePointer();
      localRandomAccessFile.close();
      long l4 = localk.qh();
      aa.d("MicroMsg.VideoInfoStorage", "FIN:" + j.qg() + "[" + paramString + "]  Offset:" + paramInt + " buf:" + paramArrayOfByte.length);
      aa.d("MicroMsg.VideoInfoStorage", "FIN:" + j.qg() + "[" + paramString + "] open:" + l1 + " seek:" + l2 + " write:" + l3 + " close:" + l4);
      return i;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.VideoInfoStorage", "ERR:" + j.qg() + "[" + paramString + "] \t\tOffset:" + paramInt + " failed:[" + localException.getMessage() + "]");
    }
    return 0 - j.qe();
  }

  public static String gY(String paramString)
  {
    long l1 = System.currentTimeMillis();
    String str1 = new SimpleDateFormat("HHmmssddMMyy").format(new Date(l1));
    if ((paramString != null) && (paramString.length() > 1))
      str1 = str1 + f.h(paramString.getBytes()).substring(0, 7);
    String str2 = str1 + l1 % 10000L;
    StringBuilder localStringBuilder = new StringBuilder().append(str2);
    long l2 = cBe;
    cBe = 1L + l2;
    return l2;
  }

  public static int hb(String paramString)
  {
    int i;
    if (cj.hX(paramString))
      i = -1;
    int j;
    do
    {
      File localFile;
      boolean bool;
      do
      {
        return i;
        localFile = new File(paramString);
        bool = localFile.exists();
        i = 0;
      }
      while (!bool);
      j = (int)localFile.length();
      i = 0;
    }
    while (j <= 0);
    return j;
  }

  public static u m(String paramString, int paramInt1, int paramInt2)
  {
    u localu = new u();
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.VideoInfoStorage", "ERR:" + j.qg() + " invalid fileName");
      localu.ret = (0 - j.qe());
      return localu;
    }
    if (paramInt1 < 0)
    {
      aa.e("MicroMsg.VideoInfoStorage", "ERR:" + j.qg() + "[" + paramString + "]  invalid readOffset:" + paramInt1);
      localu.ret = (0 - j.qe());
      return localu;
    }
    if (paramInt2 <= 0)
    {
      aa.e("MicroMsg.VideoInfoStorage", "ERR:" + j.qg() + "[" + paramString + "]  invalid readLen");
      localu.ret = (0 - j.qe());
      return localu;
    }
    k localk = new k();
    localu.buf = new byte[paramInt2];
    while (true)
    {
      int i;
      try
      {
        RandomAccessFile localRandomAccessFile = new RandomAccessFile(paramString, "r");
        long l1 = localk.qh();
        localRandomAccessFile.seek(paramInt1);
        long l2 = localk.qh();
        i = localRandomAccessFile.read(localu.buf, 0, paramInt2);
        long l3 = localk.qh();
        localRandomAccessFile.close();
        long l4 = localk.qh();
        j = 0;
        if (i < 0)
        {
          localu.ccL = j;
          localu.cBg = (j + paramInt1);
          aa.d("MicroMsg.VideoInfoStorage", "FIN:" + j.qg() + "[" + paramString + "]  Offset:" + paramInt1 + " readlen:" + paramInt2);
          aa.d("MicroMsg.VideoInfoStorage", "FIN:" + j.qg() + "[" + paramString + "] open:" + l1 + " seek:" + l2 + " write:" + l3 + " close:" + l4);
          return localu;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.VideoInfoStorage", "ERR:" + j.qg() + "[" + paramString + "] \t\tOffset:" + localu.cBg + " failed:[" + localException.getMessage() + "]");
        localu.ret = (0 - j.qe());
        return localu;
      }
      int j = i;
    }
  }

  public final List DU()
  {
    String str = "select videoinfo2.filename,videoinfo2.clientid,videoinfo2.msgsvrid,videoinfo2.netoffset,videoinfo2.filenowsize,videoinfo2.totallen,videoinfo2.thumbnetoffset,videoinfo2.thumblen,videoinfo2.status,videoinfo2.createtime,videoinfo2.lastmodifytime,videoinfo2.downloadtime,videoinfo2.videolength,videoinfo2.msglocalid,videoinfo2.nettimes,videoinfo2.cameratype,videoinfo2.user,videoinfo2.human,videoinfo2.reserved1,videoinfo2.reserved2,videoinfo2.reserved3,videoinfo2.reserved4 from videoinfo2  " + " WHERE status<197  order by downloadtime desc";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    int i = localCursor.getCount();
    aa.d("MicroMsg.VideoInfoStorage", "getUnfinishInfo resCount:" + i);
    if (i == 0)
    {
      localCursor.close();
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    for (int j = 0; j < i; j++)
    {
      localCursor.moveToPosition(j);
      q localq = new q();
      localq.convertFrom(localCursor);
      localArrayList.add(localq);
    }
    localCursor.close();
    return localArrayList;
  }

  public final String DV()
  {
    return this.cBd;
  }

  public final void a(t paramt)
  {
    this.ckD.remove(paramt);
  }

  public final void a(t paramt, Looper paramLooper)
  {
    this.ckD.a(paramt, paramLooper);
  }

  public final boolean a(q paramq)
  {
    if (paramq == null);
    ContentValues localContentValues;
    do
    {
      return false;
      paramq.cL(-1);
      localContentValues = paramq.oa();
    }
    while ((int)this.cjB.insert("videoinfo2", "filename", localContentValues) == -1);
    this.ckD.ah(paramq.getFileName());
    this.ckD.Ei();
    return true;
  }

  public final boolean b(q paramq)
  {
    boolean bool1;
    boolean bool2;
    label22: ContentValues localContentValues;
    if (paramq != null)
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      if (paramq.getFileName().length() <= 0)
        break label55;
      bool2 = true;
      Assert.assertTrue(bool2);
      localContentValues = paramq.oa();
      if (localContentValues.size() > 0)
        break label60;
      aa.e("MicroMsg.VideoInfoStorage", "update failed, no values set");
    }
    label55: label60: i locali;
    String[] arrayOfString;
    do
    {
      return false;
      bool1 = false;
      break;
      bool2 = false;
      break label22;
      locali = this.cjB;
      arrayOfString = new String[1];
      arrayOfString[0] = paramq.getFileName();
    }
    while (locali.update("videoinfo2", localContentValues, "filename= ?", arrayOfString) <= 0);
    this.ckD.ah(paramq.getFileName());
    this.ckD.Ei();
    return true;
  }

  public final void gV(String paramString)
  {
    this.ckD.ah(paramString);
    this.ckD.Ei();
  }

  public final q gW(String paramString)
  {
    String str = "select videoinfo2.filename,videoinfo2.clientid,videoinfo2.msgsvrid,videoinfo2.netoffset,videoinfo2.filenowsize,videoinfo2.totallen,videoinfo2.thumbnetoffset,videoinfo2.thumblen,videoinfo2.status,videoinfo2.createtime,videoinfo2.lastmodifytime,videoinfo2.downloadtime,videoinfo2.videolength,videoinfo2.msglocalid,videoinfo2.nettimes,videoinfo2.cameratype,videoinfo2.user,videoinfo2.human,videoinfo2.reserved1,videoinfo2.reserved2,videoinfo2.reserved3,videoinfo2.reserved4 from videoinfo2   where videoinfo2.filename = \"" + cj.hR(paramString) + "\"";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor == null)
      return null;
    boolean bool = localCursor.moveToFirst();
    q localq = null;
    if (bool)
    {
      localq = new q();
      localq.convertFrom(localCursor);
    }
    localCursor.close();
    return localq;
  }

  public final boolean gX(String paramString)
  {
    if (this.cjB.delete("videoinfo2", "filename= ?", new String[] { paramString }) > 0)
    {
      this.ckD.ah(paramString);
      this.ckD.Ei();
      return true;
    }
    return false;
  }

  public final String gZ(String paramString)
  {
    String str;
    if (cj.hX(paramString))
      str = null;
    do
    {
      return str;
      str = this.cBd + paramString;
    }
    while (c.as(str));
    return str + ".mp4";
  }

  public final String ha(String paramString)
  {
    if (cj.hX(paramString))
      return null;
    return this.cBd + paramString + ".jpg";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.r
 * JD-Core Version:    0.6.2
 */