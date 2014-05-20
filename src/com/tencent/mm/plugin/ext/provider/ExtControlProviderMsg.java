package com.tencent.mm.plugin.ext.provider;

import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import com.tencent.mm.c.a.at;
import com.tencent.mm.c.a.bf;
import com.tencent.mm.c.a.bh;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.storage.o;

public class ExtControlProviderMsg extends ExtContentProviderBase
{
  private static final UriMatcher dfB;
  private static final String[] dfD = { "msgId", "fromUserId", "fromUserNickName", "msgType", "contentType", "content", "status", "createTime" };
  private static final String[] dfE = { "userId", "unReadCount" };
  private static final String[] dfF = { "userId", "unReadCount" };
  private static final String[] dfG = { "userId", "retCode", "msgId" };
  private static final String[] dfH = { "msgId", "retCode" };
  private static final String[] dfI = { "msgId", "retCode" };
  private MatrixCursor dfJ = null;

  static
  {
    UriMatcher localUriMatcher = new UriMatcher(-1);
    dfB = localUriMatcher;
    localUriMatcher.addURI("com.tencent.mm.plugin.ext.message", "oneMsg", 7);
    dfB.addURI("com.tencent.mm.plugin.ext.message", "unReadCount", 8);
    dfB.addURI("com.tencent.mm.plugin.ext.message", "unReadMsgs", 9);
    dfB.addURI("com.tencent.mm.plugin.ext.message", "unReadUserList", 10);
    dfB.addURI("com.tencent.mm.plugin.ext.message", "recordMsg", 11);
    dfB.addURI("com.tencent.mm.plugin.ext.message", "playVoice", 12);
    dfB.addURI("com.tencent.mm.plugin.ext.message", "setReaded", 13);
    dfB.addURI("com.tencent.mm.plugin.ext.message", "sendTextMsg", 14);
  }

  private Cursor Mr()
  {
    aa.d("MicroMsg.ExtControlMsgProvider", "getUnReadUserList()");
    MatrixCursor localMatrixCursor = new MatrixCursor(dfF);
    while (true)
    {
      try
      {
        Cursor localCursor = be.uz().sw().aCU();
        if (localCursor != null)
        {
          if (localCursor.moveToFirst())
          {
            String str = localCursor.getString(localCursor.getColumnIndex("talker"));
            i locali = be.uz().su().tO(str);
            if (!w.cp(str))
            {
              if ((w.db(locali.getUsername())) || (w.da(locali.getUsername())) || (i.lP(locali.rJ())) || (w.cT(locali.getUsername())))
                break label240;
              if (!w.cU(locali.getUsername()))
                continue;
              break label240;
              if (i == 0)
              {
                long l = locali.rj();
                Object[] arrayOfObject = new Object[2];
                arrayOfObject[0] = com.tencent.mm.plugin.ext.a.a.V(l);
                arrayOfObject[1] = Integer.valueOf(localCursor.getInt(localCursor.getColumnIndex("unReadCount")));
                localMatrixCursor.addRow(arrayOfObject);
              }
            }
            if (localCursor.moveToNext())
              continue;
          }
          else
          {
            localCursor.close();
          }
        }
        else
        {
          fT(0);
          return localMatrixCursor;
        }
        i = 1;
        continue;
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.ExtControlMsgProvider", localException.getMessage());
        localMatrixCursor.close();
        fT(4);
        return null;
      }
      label240: int i = 0;
    }
  }

  private static void a(MatrixCursor paramMatrixCursor, ak paramak, i parami, boolean paramBoolean, String paramString)
  {
    if ((paramMatrixCursor == null) || (paramak == null));
    while ((paramak.getType() == 9999) || (paramak.getType() == 10000))
      return;
    String str1 = "";
    String str2 = "";
    if (paramBoolean)
    {
      int m = bv.dw(paramak.getContent());
      if ((m != -1) && (paramak.getContent().length() > m))
      {
        String str3 = paramak.getContent().substring(0, m).trim();
        if ((str3 != null) && (str3.length() > 0) && (paramak.getContent().length() >= m + 2))
        {
          str1 = w.cu(str3);
          str2 = paramak.getContent().substring(m + 2);
        }
      }
    }
    int i = com.tencent.mm.plugin.ext.b.a.o(paramak);
    if (i == 1)
      if (paramBoolean)
        str1 = str1 + "!]" + str2;
    while (true)
    {
      int j;
      int k;
      try
      {
        Object[] arrayOfObject = new Object[8];
        arrayOfObject[0] = com.tencent.mm.plugin.ext.a.a.V(paramak.Bo());
        arrayOfObject[1] = com.tencent.mm.plugin.ext.a.a.V(parami.rj());
        arrayOfObject[2] = paramString;
        if (paramak.rO() != 0)
          break label317;
        j = 1;
        arrayOfObject[3] = Integer.valueOf(j);
        arrayOfObject[4] = Integer.valueOf(i);
        arrayOfObject[5] = str1;
        if (paramak.getStatus() != 4)
          break label323;
        k = 1;
        arrayOfObject[6] = Integer.valueOf(k);
        arrayOfObject[7] = Long.valueOf(paramak.DL());
        paramMatrixCursor.addRow(arrayOfObject);
        return;
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.ExtControlMsgProvider", localException.getMessage());
        return;
      }
      str1 = paramak.getContent();
      continue;
      if (!paramBoolean)
      {
        str1 = "";
        continue;
        label317: j = 2;
        continue;
        label323: k = 2;
      }
    }
  }

  private Cursor h(String[] paramArrayOfString)
  {
    aa.d("MicroMsg.ExtControlMsgProvider", "getUnReadCount()");
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0))
    {
      aa.e("MicroMsg.ExtControlMsgProvider", "wrong args");
      fT(3);
      return null;
    }
    MatrixCursor localMatrixCursor = new MatrixCursor(dfE);
    while (true)
    {
      int i;
      try
      {
        boolean bool = "*".equals(paramArrayOfString[0]);
        i = 0;
        if (bool)
        {
          int j = be.uz().sx().dk("");
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = "0";
          arrayOfObject1[1] = Integer.valueOf(j);
          localMatrixCursor.addRow(arrayOfObject1);
          fT(0);
          return localMatrixCursor;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.ExtControlMsgProvider", localException.getMessage());
        localMatrixCursor.close();
        fT(4);
        return null;
      }
      while (i < paramArrayOfString.length)
      {
        long l = com.tencent.mm.plugin.ext.a.a.ju(paramArrayOfString[i]);
        i locali = be.uz().su().bQ(l);
        if ((locali != null) && (locali.rj() > 0))
        {
          int k = be.uz().sx().dk(" and ( rconversation.username='" + locali.getUsername() + "' );");
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Long.valueOf(l);
          arrayOfObject2[1] = Integer.valueOf(k);
          localMatrixCursor.addRow(arrayOfObject2);
        }
        i++;
      }
    }
  }

  private Cursor i(String[] paramArrayOfString)
  {
    aa.d("MicroMsg.ExtControlMsgProvider", "getUnReadMsgs()");
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0))
    {
      aa.e("MicroMsg.ExtControlMsgProvider", "wrong args");
      fT(3);
      return null;
    }
    i locali;
    Object localObject2;
    try
    {
      long l = com.tencent.mm.plugin.ext.a.a.ju(paramArrayOfString[0]);
      locali = be.uz().su().bQ(l);
      if ((locali != null) && (locali.getUsername() != null) && (locali.getUsername().length() > 0))
        break label119;
      aa.e("MicroMsg.ExtControlMsgProvider", "contact is null");
      fT(3);
      return null;
    }
    catch (Exception localException1)
    {
      localObject2 = null;
    }
    aa.e("MicroMsg.ExtControlMsgProvider", localException1.getMessage());
    if (localObject2 != null)
      localObject2.close();
    fT(4);
    return null;
    label119: String str1 = locali.rr();
    boolean bool;
    String str2;
    if (locali.getUsername().endsWith("@chatroom"))
    {
      String str3 = w.cu(locali.getUsername());
      bool = true;
      str2 = str3;
    }
    while (true)
    {
      Cursor localCursor = be.uz().sw().vg(locali.getUsername());
      if (localCursor == null)
      {
        aa.e("MicroMsg.ExtControlMsgProvider", "msgCursor == null");
        fT(4);
        return null;
      }
      MatrixCursor localMatrixCursor = new MatrixCursor(dfD);
      try
      {
        if ((localCursor.getCount() > 0) && (localCursor.moveToFirst()))
        {
          ak localak = new ak();
          do
          {
            localak.convertFrom(localCursor);
            a(localMatrixCursor, localak, locali, bool, str2);
          }
          while (localCursor.moveToNext());
        }
        localCursor.close();
        fT(0);
        return localMatrixCursor;
      }
      catch (Exception localException2)
      {
        localObject2 = localMatrixCursor;
        Object localObject1 = localException2;
      }
      break;
      str2 = str1;
      bool = false;
    }
  }

  private Cursor j(String[] paramArrayOfString)
  {
    aa.d("MicroMsg.ExtControlMsgProvider", "getOneMsg()");
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0))
    {
      aa.e("MicroMsg.ExtControlMsgProvider", "wrong args");
      fT(3);
      return null;
    }
    ak localak;
    Object localObject2;
    try
    {
      long l = com.tencent.mm.plugin.ext.a.a.ju(paramArrayOfString[0]);
      localak = be.uz().sw().bU(l);
      if (localak != null)
        break label92;
      fT(3);
      return null;
    }
    catch (Exception localException1)
    {
      localObject2 = null;
    }
    aa.e("MicroMsg.ExtControlMsgProvider", localException1.getMessage());
    if (localObject2 != null)
      localObject2.close();
    fT(4);
    return null;
    label92: i locali = be.uz().su().tO(localak.aCl());
    if ((locali == null) || (locali.rj() <= 0))
    {
      fT(3);
      return null;
    }
    String str1 = locali.rr();
    boolean bool;
    String str2;
    if (locali.getUsername().endsWith("@chatroom"))
    {
      String str3 = w.cu(locali.getUsername());
      bool = true;
      str2 = str3;
    }
    while (true)
    {
      MatrixCursor localMatrixCursor = new MatrixCursor(dfD);
      try
      {
        a(localMatrixCursor, localak, locali, bool, str2);
        fT(0);
        return localMatrixCursor;
      }
      catch (Exception localException2)
      {
        localObject2 = localMatrixCursor;
        Object localObject1 = localException2;
      }
      break;
      str2 = str1;
      bool = false;
    }
  }

  private Cursor k(String[] paramArrayOfString)
  {
    aa.d("MicroMsg.ExtControlMsgProvider", "handleRecordMsg()");
    if ((paramArrayOfString == null) || (paramArrayOfString.length < 2))
    {
      aa.w("MicroMsg.ExtControlMsgProvider", "wrong args");
      fT(3);
      return null;
    }
    try
    {
      int i = Integer.valueOf(paramArrayOfString[0]).intValue();
      long l = com.tencent.mm.plugin.ext.a.a.ju(paramArrayOfString[1]);
      if (l <= 0L)
      {
        fT(3);
        return null;
      }
      com.tencent.mm.pluginsdk.d.a.a locala = new com.tencent.mm.pluginsdk.d.a.a();
      locala.a(4000L, new c(this, i, l, locala, paramArrayOfString));
      MatrixCursor localMatrixCursor = this.dfJ;
      return localMatrixCursor;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.ExtControlMsgProvider", localException.getMessage());
      if (this.dfJ != null)
        this.dfJ.close();
      fT(4);
    }
    return null;
  }

  private Cursor l(String[] paramArrayOfString)
  {
    aa.d("MicroMsg.ExtControlMsgProvider", "handlePlayVoice()");
    if ((paramArrayOfString == null) || (paramArrayOfString.length < 2))
    {
      aa.e("MicroMsg.ExtControlMsgProvider", "wrong args");
      fT(3);
      return null;
    }
    int i;
    long l;
    Object localObject2;
    try
    {
      i = Integer.valueOf(paramArrayOfString[0]).intValue();
      l = com.tencent.mm.plugin.ext.a.a.ju(paramArrayOfString[1]);
      if (l <= 0L)
      {
        fT(3);
        return null;
      }
    }
    catch (Exception localException1)
    {
      localObject2 = null;
    }
    while (true)
    {
      aa.e("MicroMsg.ExtControlMsgProvider", localException1.getMessage());
      if (localObject2 != null)
        localObject2.close();
      fT(4);
      return null;
      MatrixCursor localMatrixCursor = new MatrixCursor(dfH);
      if (i == 3);
      try
      {
        bf localbf = new bf();
        localbf.bNg.bMS = l;
        com.tencent.mm.sdk.b.a.ayH().f(localbf);
        if ((localbf.bNh.rD == null) || (localbf.bNh.rD.length() <= 0))
        {
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = paramArrayOfString[1];
          arrayOfObject2[1] = Integer.valueOf(2);
          localMatrixCursor.addRow(arrayOfObject2);
          fT(4);
          return localMatrixCursor;
        }
        at localat2 = new at();
        localat2.bMU.op = 1;
        localat2.bMU.rD = localbf.bNh.rD;
        if (com.tencent.mm.sdk.b.a.ayH().f(localat2))
        {
          Object[] arrayOfObject4 = new Object[2];
          arrayOfObject4[0] = paramArrayOfString[1];
          arrayOfObject4[1] = Integer.valueOf(1);
          localMatrixCursor.addRow(arrayOfObject4);
          fT(0);
        }
        while (true)
        {
          com.tencent.mm.plugin.ext.b.Mm();
          com.tencent.mm.plugin.ext.b.U(l);
          return localMatrixCursor;
          aa.e("MicroMsg.ExtControlMsgProvider", "play failed");
          Object[] arrayOfObject3 = new Object[2];
          arrayOfObject3[0] = paramArrayOfString[1];
          arrayOfObject3[1] = Integer.valueOf(2);
          localMatrixCursor.addRow(arrayOfObject3);
          fT(4);
        }
        if (i == 4)
        {
          at localat1 = new at();
          localat1.bMU.op = 2;
          if (com.tencent.mm.sdk.b.a.ayH().f(localat1))
          {
            aa.i("MicroMsg.ExtControlMsgProvider", "stop last playing");
            fT(0);
            return null;
          }
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = paramArrayOfString[1];
          arrayOfObject1[1] = Integer.valueOf(2);
          localMatrixCursor.addRow(arrayOfObject1);
          fT(4);
          return null;
        }
        return localMatrixCursor;
      }
      catch (Exception localException2)
      {
        localObject2 = localMatrixCursor;
        Object localObject1 = localException2;
      }
    }
  }

  private Cursor m(String[] paramArrayOfString)
  {
    aa.d("MicroMsg.ExtControlMsgProvider", "setMsgReaded()");
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0))
    {
      aa.e("MicroMsg.ExtControlMsgProvider", "wrong args");
      fT(3);
      return null;
    }
    int i = 0;
    try
    {
      while (i < paramArrayOfString.length)
      {
        if ((paramArrayOfString[i] != null) && (paramArrayOfString[i].length() > 0))
        {
          long l = com.tencent.mm.plugin.ext.a.a.ju(paramArrayOfString[i]);
          com.tencent.mm.plugin.ext.b.Mm();
          com.tencent.mm.plugin.ext.b.U(l);
        }
        i++;
      }
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.ExtControlMsgProvider", localException.getMessage());
      fT(4);
      return null;
    }
    fT(0);
    return null;
  }

  private Cursor n(String[] paramArrayOfString)
  {
    aa.d("MicroMsg.ExtControlMsgProvider", "sendTextMsg()");
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0))
    {
      aa.e("MicroMsg.ExtControlMsgProvider", "wrong args");
      fT(3);
      return null;
    }
    MatrixCursor localMatrixCursor = new MatrixCursor(dfI);
    try
    {
      long l = com.tencent.mm.plugin.ext.a.a.ju(paramArrayOfString[0]);
      if (l <= 0L)
      {
        fT(3);
        return null;
      }
      com.tencent.mm.plugin.ext.b.Mm();
      i locali = com.tencent.mm.plugin.ext.b.T(l);
      if ((locali == null) || (locali.rj() <= 0))
      {
        aa.e("MicroMsg.ExtControlMsgProvider", "toContact is null ");
        fT(3);
        return null;
      }
      com.tencent.mm.pluginsdk.d.a.a locala = new com.tencent.mm.pluginsdk.d.a.a();
      locala.a(15000L, new d(this, locali, paramArrayOfString, locala, localMatrixCursor));
      return localMatrixCursor;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.ExtControlMsgProvider", localException.getMessage());
      if (this.dfJ != null)
        this.dfJ.close();
      fT(4);
    }
    return null;
  }

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }

  public String getType(Uri paramUri)
  {
    return null;
  }

  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    return null;
  }

  public boolean onCreate()
  {
    return true;
  }

  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    a(paramUri, getContext(), dfB);
    if (paramUri == null)
    {
      fT(3);
      return null;
    }
    if ((cj.hX(Mp())) || (cj.hX(Mq())))
    {
      fT(3);
      return null;
    }
    if (!ID())
    {
      fT(1);
      return this.dft;
    }
    if (!ao(getContext()))
    {
      aa.w("MicroMsg.ExtControlMsgProvider", "invalid appid ! return null");
      fT(2);
      return null;
    }
    switch (dfB.match(paramUri))
    {
    default:
      fT(3);
      return null;
    case 7:
      return j(paramArrayOfString2);
    case 8:
      return h(paramArrayOfString2);
    case 9:
      return i(paramArrayOfString2);
    case 10:
      return Mr();
    case 11:
      return k(paramArrayOfString2);
    case 12:
      return l(paramArrayOfString2);
    case 13:
      return m(paramArrayOfString2);
    case 14:
    }
    return n(paramArrayOfString2);
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.ExtControlProviderMsg
 * JD-Core Version:    0.6.2
 */