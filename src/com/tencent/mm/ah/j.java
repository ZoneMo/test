package com.tencent.mm.ah;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.m.c;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ao;

public final class j extends ah
{
  public static final String[] bRN = { "CREATE INDEX IF NOT EXISTS  shakeverifymessage_unread_index ON shakeverifymessage ( status )", "CREATE INDEX IF NOT EXISTS shakeverifymessage_statusIndex ON shakeverifymessage ( status )", "CREATE INDEX IF NOT EXISTS shakeverifymessage_createtimeIndex ON shakeverifymessage ( createtime )" };
  public static final String[] cjC;
  private af crf;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(i.cfX, "shakeverifymessage");
    cjC = arrayOfString;
  }

  public j(af paramaf)
  {
    super(paramaf, i.cfX, "shakeverifymessage", bRN);
    this.crf = paramaf;
  }

  public static long gN(String paramString)
  {
    long l1 = 0L;
    if (paramString != null)
    {
      i locali = k.DA().Dv();
      if (locali != null)
        l1 = 1L + locali.field_createtime;
    }
    long l2 = cj.FC();
    if (l1 > l2)
      return l1;
    return l2;
  }

  public final int Dr()
  {
    Cursor localCursor = this.crf.rawQuery("select count(*) from " + zz() + " where status != 4", null);
    if (localCursor.getCount() != 1)
      localCursor.close();
    int i;
    do
    {
      return 0;
      localCursor.moveToFirst();
      i = localCursor.getInt(0);
      localCursor.close();
    }
    while (i <= 0);
    return i;
  }

  public final void Dt()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("status", Integer.valueOf(4));
    if (this.crf.update(zz(), localContentValues, "status!=? ", new String[] { "4" }) != 0)
      Ei();
  }

  public final void Du()
  {
    this.crf.delete(zz(), null, null);
  }

  public final i Dv()
  {
    Cursor localCursor = this.crf.rawQuery("SELECT * FROM " + zz() + " ORDER BY createtime DESC LIMIT 1", null);
    if (localCursor == null)
      return null;
    if (localCursor.getCount() != 1)
    {
      localCursor.close();
      return null;
    }
    localCursor.moveToFirst();
    i locali = new i();
    locali.convertFrom(localCursor);
    localCursor.close();
    return locali;
  }

  public final void a(l paraml, ao paramao)
  {
    aa.d("MicroMsg.ShakeVerifyMessageStorage", "saveToVerifyStg, cmdAM, status = " + paraml.fzr + ", id = " + paraml.fzo);
    i locali = new i();
    locali.field_content = an.a(paraml.fzv);
    locali.field_createtime = cj.FC();
    locali.field_imgpath = "";
    locali.field_sayhicontent = paramao.getContent();
    locali.field_sayhiuser = paramao.aCu();
    locali.field_scene = paramao.Gf();
    if (paraml.fzr > 3);
    for (int i = paraml.fzr; ; i = 3)
    {
      locali.field_status = i;
      locali.field_svrid = paraml.fzo;
      locali.field_talker = an.a(paraml.fzs);
      locali.field_type = paraml.fzu;
      locali.field_isSend = 0;
      a(locali);
      c.p(locali.field_sayhiuser, 3);
      return;
    }
  }

  public final boolean a(i parami)
  {
    if (parami == null)
      aa.e("MicroMsg.ShakeVerifyMessageStorage", "insert fail, shakeMsg is null");
    while (!super.b(parami))
      return false;
    th(parami.gfy);
    return true;
  }

  public final Cursor eu(int paramInt)
  {
    String str = "SELECT * FROM " + zz() + " where isSend = 0 ORDER BY createtime desc LIMIT " + paramInt;
    return this.crf.rawQuery(str, null);
  }

  public final void gJ(String paramString)
  {
    String str = "svrid = '" + paramString + "'";
    int i = this.crf.delete(zz(), str, null);
    if (i > 0)
      Ei();
    aa.i("MicroMsg.ShakeVerifyMessageStorage", "delBySvrId = " + i);
  }

  public final i gO(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.ShakeVerifyMessageStorage", "getLastRecvShakeMsg fail, talker is null");
      return null;
    }
    String str = "select * from ShakeVerifyMessage where isSend = 0 and sayhiuser = '" + cj.hR(paramString) + "' order by createTime DESC limit 1";
    Cursor localCursor = this.crf.rawQuery(str, null);
    i locali = new i();
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      locali.convertFrom(localCursor);
    }
    localCursor.close();
    return locali;
  }

  public final i[] gP(String paramString)
  {
    aa.d("MicroMsg.ShakeVerifyMessageStorage", "getLastShakeVerifyMessage, talker = " + paramString + ", limit = 3");
    String str = "select *, rowid from ShakeVerifyMessage  where sayhiuser = '" + cj.hR(paramString) + "' order by createtime DESC limit 3";
    Cursor localCursor = this.crf.rawQuery(str, null);
    int i = localCursor.getCount();
    if (i <= 0)
    {
      aa.i("MicroMsg.ShakeVerifyMessageStorage", "getLastShakeVerifyMessage, cursor count = 0, talker = " + paramString + ", limit = 3");
      localCursor.close();
      return null;
    }
    i[] arrayOfi = new i[i];
    for (int j = 0; j < i; j++)
    {
      localCursor.moveToPosition(j);
      arrayOfi[(-1 + (i - j))] = new i();
      arrayOfi[(-1 + (i - j))].convertFrom(localCursor);
    }
    localCursor.close();
    return arrayOfi;
  }

  public final int getCount()
  {
    Cursor localCursor = this.crf.rawQuery("select count(*) from " + zz(), null);
    if (localCursor.getCount() != 1)
      localCursor.close();
    int i;
    do
    {
      return 0;
      localCursor.moveToFirst();
      i = localCursor.getInt(0);
      localCursor.close();
    }
    while (i <= 0);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ah.j
 * JD-Core Version:    0.6.2
 */