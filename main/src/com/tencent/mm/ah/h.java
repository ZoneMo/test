package com.tencent.mm.ah;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.c.b.v;
import com.tencent.mm.m.c;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ao;

public final class h extends ah
{
  public static final String[] cjC = arrayOfString;
  private af crf;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(g.cfX, "LBSVerifyMessage");
  }

  public h(af paramaf)
  {
    super(paramaf, g.cfX, "LBSVerifyMessage", v.bRN);
    this.crf = paramaf;
  }

  public static long gN(String paramString)
  {
    long l1 = 0L;
    if (paramString != null)
    {
      g localg = k.Dz().Ds();
      if (localg != null)
        l1 = 1L + localg.field_createtime;
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

  public final g Ds()
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
    g localg = new g();
    localg.convertFrom(localCursor);
    localCursor.close();
    return localg;
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

  public final void a(l paraml, ao paramao)
  {
    aa.d("MicroMsg.LBSVerifyMessageStorage", "saveToVerifyStg, cmdAM, status = " + paraml.fzr + ", id = " + paraml.fzo);
    g localg = new g();
    localg.field_content = an.a(paraml.fzv);
    localg.field_createtime = cj.FC();
    localg.field_imgpath = "";
    localg.field_sayhicontent = paramao.getContent();
    localg.field_sayhiuser = paramao.aCu();
    localg.field_scene = paramao.Gf();
    if (paraml.fzr > 3);
    for (int i = paraml.fzr; ; i = 3)
    {
      localg.field_status = i;
      localg.field_svrid = paraml.fzo;
      localg.field_talker = an.a(paraml.fzs);
      localg.field_type = paraml.fzu;
      localg.field_isSend = 0;
      a(localg);
      c.p(localg.field_sayhiuser, 3);
      return;
    }
  }

  public final boolean a(g paramg)
  {
    if (paramg == null)
      aa.e("MicroMsg.LBSVerifyMessageStorage", "insert fail, lbsMsg is null");
    while (!super.b(paramg))
      return false;
    th(paramg.gfy);
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
    aa.i("MicroMsg.LBSVerifyMessageStorage", "delBySvrId = " + i);
  }

  public final void gK(String paramString)
  {
    String str = "sayhiuser = '" + paramString + "'";
    int i = this.crf.delete(zz(), str, null);
    if (i > 0)
      Ei();
    aa.i("MicroMsg.LBSVerifyMessageStorage", "delByUserName = " + i);
  }

  public final g[] gL(String paramString)
  {
    aa.d("MicroMsg.LBSVerifyMessageStorage", "getLastLBSVerifyMessage, talker = " + paramString + ", limit = 3");
    String str = "select *, rowid from LBSVerifyMessage  where sayhiuser = '" + cj.hR(paramString) + "' order by createtime DESC limit 3";
    Cursor localCursor = this.crf.rawQuery(str, null);
    int i = localCursor.getCount();
    if (i <= 0)
    {
      aa.i("MicroMsg.LBSVerifyMessageStorage", "getLastLBSVerifyMessage, cursor count = 0, talker = " + paramString + ", limit = 3");
      localCursor.close();
      return null;
    }
    g[] arrayOfg = new g[i];
    for (int j = 0; j < i; j++)
    {
      localCursor.moveToPosition(j);
      arrayOfg[(-1 + (i - j))] = new g();
      arrayOfg[(-1 + (i - j))].convertFrom(localCursor);
    }
    localCursor.close();
    return arrayOfg;
  }

  public final g gM(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.LBSVerifyMessageStorage", "getLastRecvLbsMsg fail, talker is null");
      return null;
    }
    String str = "select * from LBSVerifyMessage where isSend = 0 and sayhiuser = '" + cj.hR(paramString) + "' order by createTime DESC limit 1";
    Cursor localCursor = this.crf.rawQuery(str, null);
    g localg = new g();
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      localg.convertFrom(localCursor);
    }
    localCursor.close();
    return localg;
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
 * Qualified Name:     com.tencent.mm.ah.h
 * JD-Core Version:    0.6.2
 */