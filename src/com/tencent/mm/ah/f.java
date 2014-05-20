package com.tencent.mm.ah;

import android.database.Cursor;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;

public final class f extends ah
{
  private static final String[] cAi = { "CREATE INDEX IF NOT EXISTS  fmessageTalkerIndex ON fmessage_msginfo ( talker )" };
  public static final String[] cjC;
  private af crf;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(e.cfX, "fmessage_msginfo");
    cjC = arrayOfString;
  }

  public f(af paramaf)
  {
    super(paramaf, e.cfX, "fmessage_msginfo", cAi);
    this.crf = paramaf;
  }

  public final ArrayList Dq()
  {
    aa.d("MicroMsg.FMessageMsgInfoStorage", "getFMsgByType, type = 0");
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = this.crf.rawQuery("select *, rowid from fmessage_msginfo where type = 0", null);
    if (localCursor.moveToFirst())
      while (!localCursor.isAfterLast())
      {
        e locale = new e();
        locale.convertFrom(localCursor);
        localArrayList.add(locale);
        localCursor.moveToNext();
      }
    localCursor.close();
    aa.d("MicroMsg.FMessageMsgInfoStorage", "getFMsgByType, size = " + localArrayList.size());
    return localArrayList;
  }

  public final boolean M(String paramString1, String paramString2)
  {
    String str = "update fmessage_msginfo set talker = '" + cj.hR(paramString2) + "'  where talker = '" + cj.hR(paramString1) + "'";
    return this.crf.aQ("fmessage_msginfo", str);
  }

  public final boolean a(e parame)
  {
    if (parame == null)
      aa.e("MicroMsg.FMessageMsgInfoStorage", "insert fail, fmsgInfo is null");
    while (!super.b(parame))
      return false;
    if (parame.field_isSend == 0)
    {
      int i = cj.c((Integer)be.uz().sr().get(143618));
      aa.d("MicroMsg.FMessageMsgInfoStorage", "insert succ, udpate unread to = " + (i + 1));
    }
    th(parame.gfy);
    return true;
  }

  public final boolean gE(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.FMessageMsgInfoStorage", "deleteByTalker fail, talker is null");
      return false;
    }
    String str = "delete from fmessage_msginfo where talker = '" + cj.hR(paramString) + "'";
    return this.crf.aQ("fmessage_msginfo", str);
  }

  public final e[] gG(String paramString)
  {
    aa.d("MicroMsg.FMessageMsgInfoStorage", "getLastFMessageMsgInfo, talker = " + paramString + ", limit = 3");
    String str = "select *, rowid from fmessage_msginfo  where talker = '" + cj.hR(paramString) + "' order by createTime DESC limit 3";
    Cursor localCursor = this.crf.rawQuery(str, null);
    int i = localCursor.getCount();
    if (i <= 0)
    {
      aa.i("MicroMsg.FMessageMsgInfoStorage", "getLastFMessageMsgInfo, cursor count = 0, talker = " + paramString + ", limit = 3");
      localCursor.close();
      return null;
    }
    e[] arrayOfe = new e[i];
    for (int j = 0; j < i; j++)
    {
      localCursor.moveToPosition(j);
      arrayOfe[(-1 + (i - j))] = new e();
      arrayOfe[(-1 + (i - j))].convertFrom(localCursor);
    }
    localCursor.close();
    return arrayOfe;
  }

  public final e gH(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.FMessageMsgInfoStorage", "getLastFMsg fail, talker is null");
      return null;
    }
    String str = "select * from fmessage_msginfo where talker = '" + cj.hR(paramString) + "' order by createTime DESC limit 1";
    Cursor localCursor = this.crf.rawQuery(str, null);
    e locale = new e();
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      locale.convertFrom(localCursor);
    }
    localCursor.close();
    return locale;
  }

  public final e gI(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.FMessageMsgInfoStorage", "getLastRecvFMsg fail, talker is null");
      return null;
    }
    String str = "select * from fmessage_msginfo where isSend = 0 and talker = '" + cj.hR(paramString) + "' order by createTime DESC limit 1";
    Cursor localCursor = this.crf.rawQuery(str, null);
    e locale = new e();
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      locale.convertFrom(localCursor);
    }
    localCursor.close();
    return locale;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ah.f
 * JD-Core Version:    0.6.2
 */