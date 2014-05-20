package com.tencent.mm.ah;

import android.database.Cursor;
import com.tencent.mm.ap.i;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ao;
import java.util.ArrayList;
import java.util.List;

public final class b extends ah
  implements com.tencent.mm.sdk.e.al
{
  private static final String[] cAi = { "CREATE INDEX IF NOT EXISTS  fmessageConversationTalkerIndex ON fmessage_conversation ( talker )" };
  public static final String[] cjC;
  private af crf;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(a.cfX, "fmessage_conversation");
    cjC = arrayOfString;
  }

  public b(af paramaf)
  {
    super(paramaf, a.cfX, "fmessage_conversation", cAi);
    this.crf = paramaf;
  }

  public final Cursor BD()
  {
    return this.crf.rawQuery("select * from fmessage_conversation  ORDER BY lastModifiedTime DESC", null);
  }

  public final List Dn()
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(4);
    aa.f("MicroMsg.FMessageConversationStorage", "getNewLimit, limit = %d", arrayOfObject1);
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = this.crf.rawQuery("select * from fmessage_conversation  where isNew = 1 ORDER BY lastModifiedTime DESC limit 4", null);
    int i = localCursor.getCount();
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(i);
    aa.e("MicroMsg.FMessageConversationStorage", "getNewLimit, count = %d", arrayOfObject2);
    if (i <= 0)
    {
      aa.d("MicroMsg.FMessageConversationStorage", "getNewLimit, cursor count is zero");
      localCursor.close();
      return localArrayList;
    }
    if (localCursor.moveToFirst())
      while (!localCursor.isAfterLast())
      {
        a locala = new a();
        locala.convertFrom(localCursor);
        localCursor.moveToNext();
        localArrayList.add(locala);
      }
    localCursor.close();
    return localArrayList;
  }

  public final boolean Do()
  {
    if (this.crf.aQ("fmessage_conversation", "update fmessage_conversation set isNew = 0"))
    {
      aa.d("MicroMsg.FMessageConversationStorage", "clearAllNew success");
      Ei();
      return true;
    }
    aa.e("MicroMsg.FMessageConversationStorage", "clearAllNew fail");
    return false;
  }

  public final int Dp()
  {
    Cursor localCursor = this.crf.rawQuery("select count(*) from fmessage_conversation where isNew = 1", null);
    boolean bool = localCursor.moveToLast();
    int i = 0;
    if (bool)
      i = localCursor.getInt(0);
    localCursor.close();
    aa.d("MicroMsg.FMessageConversationStorage", "getNewCount = " + i);
    return i;
  }

  public final void ca(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.FMessageConversationStorage", "onNotifyChange, id is null");
      return;
    }
    e locale;
    a locala1;
    try
    {
      long l2 = Long.parseLong(paramString);
      l1 = l2;
      if (l1 == 0L)
      {
        aa.w("MicroMsg.FMessageConversationStorage", "onNotifyChange fail, sysRowId is invalid");
        return;
      }
    }
    catch (Exception localException)
    {
      long l1;
      while (true)
      {
        aa.w("MicroMsg.FMessageConversationStorage", "onNotifyChange, id = " + paramString + ", ex = " + localException.getMessage());
        l1 = 0L;
      }
      if (be.uz().sd() == 0)
      {
        aa.e("MicroMsg.FMessageConversationStorage", "onNotifyChange, account not ready, can not insert fmessageconversation");
        return;
      }
      locale = new e();
      if (!k.Dx().b(l1, locale))
      {
        aa.w("MicroMsg.FMessageConversationStorage", "onNotifyChange, get fail, id = " + l1);
        return;
      }
      aa.d("MicroMsg.FMessageConversationStorage", "onNotifyChange succ, sysRowId = " + l1);
      locala1 = k.Dy().gB(locale.field_talker);
      if (locala1 == null)
      {
        aa.i("MicroMsg.FMessageConversationStorage", "onNotifyChange, fmessage conversation does not exist, insert a new one, talker = " + locale.field_talker);
        a locala2 = new a();
        if (locale.field_type == 0)
        {
          com.tencent.mm.storage.al localal2 = com.tencent.mm.storage.al.uQ(locale.field_msgContent);
          locala2.field_displayName = localal2.getDisplayName();
          if ((localal2.Gf() == 4) && (localal2.aCy() != null))
            locala2.field_displayName = localal2.aCy();
          locala2.field_addScene = localal2.Gf();
          locala2.field_isNew = 1;
          locala2.field_contentFromUsername = localal2.aCu();
          locala2.field_contentNickname = localal2.kn();
          locala2.field_contentPhoneNumMD5 = localal2.aCw();
          locala2.field_contentFullPhoneNumMD5 = localal2.aCz();
        }
        while (true)
        {
          locala2.field_lastModifiedTime = System.currentTimeMillis();
          locala2.field_state = 0;
          locala2.field_talker = locale.field_talker;
          locala2.field_encryptTalker = locale.field_encryptTalker;
          locala2.field_fmsgSysRowId = l1;
          locala2.field_fmsgIsSend = locale.field_isSend;
          locala2.field_fmsgType = locale.field_type;
          locala2.field_fmsgContent = locale.field_msgContent;
          int i = locale.field_isSend;
          int j = 0;
          if (i == 0)
            j = locale.field_type;
          locala2.field_recvFmsgType = j;
          k.Dy().b(locala2);
          return;
          if (locale.field_isSend == 0)
          {
            ao localao = ao.uU(locale.field_msgContent);
            locala2.field_displayName = localao.getDisplayName();
            locala2.field_addScene = localao.Gf();
            locala2.field_isNew = 1;
            locala2.field_contentFromUsername = localao.aCu();
            locala2.field_contentNickname = localao.kn();
            locala2.field_contentVerifyContent = localao.getContent();
          }
        }
      }
      aa.d("MicroMsg.FMessageConversationStorage", "onNotifyChange, fmessage conversation has existed, talker = " + locale.field_talker);
      if (locale.field_isSend == 0)
        locala1.field_isNew = 1;
      locala1.field_lastModifiedTime = System.currentTimeMillis();
      locala1.field_encryptTalker = locale.field_encryptTalker;
      locala1.field_fmsgSysRowId = l1;
      locala1.field_fmsgIsSend = locale.field_isSend;
      locala1.field_fmsgType = locale.field_type;
      locala1.field_fmsgContent = locale.field_msgContent;
      if (locale.field_isSend == 0)
        locala1.field_recvFmsgType = locale.field_type;
      if (locale.field_type != 0)
        break label695;
    }
    com.tencent.mm.storage.al localal1 = com.tencent.mm.storage.al.uQ(locale.field_msgContent);
    locala1.field_contentFromUsername = localal1.aCu();
    locala1.field_contentNickname = localal1.kn();
    locala1.field_contentPhoneNumMD5 = localal1.aCw();
    locala1.field_contentFullPhoneNumMD5 = localal1.aCz();
    while (true)
    {
      k.Dy().a(locala1, new String[0]);
      return;
      label695: if (locale.field_isSend == 0)
        locala1.field_contentVerifyContent = ao.uU(locale.field_msgContent).getContent();
    }
  }

  public final boolean gA(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.w("MicroMsg.FMessageConversationStorage", "unsetNew fail, talker is null");
      return false;
    }
    a locala = gB(paramString);
    if ((locala == null) || (!paramString.equals(locala.field_talker)))
    {
      aa.w("MicroMsg.FMessageConversationStorage", "unsetNew fail, conversation does not exist, talker = " + paramString);
      return false;
    }
    locala.field_isNew = 0;
    return super.a(locala, new String[0]);
  }

  public final a gB(String paramString)
  {
    a locala;
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.w("MicroMsg.FMessageConversationStorage", "get fail, talker is null");
      locala = null;
    }
    do
    {
      return locala;
      locala = new a();
      locala.field_talker = paramString;
    }
    while (super.c(locala, new String[0]));
    aa.i("MicroMsg.FMessageConversationStorage", "get fail, maybe not exist, talker = " + paramString);
    return null;
  }

  public final int gC(String paramString)
  {
    a locala = new a();
    locala.field_state = -1;
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = "state";
    arrayOfObject[1] = "fmessage_conversation";
    arrayOfObject[2] = "talker";
    arrayOfObject[3] = i.bQ(paramString);
    String str = String.format("select %s from %s where %s = %s", arrayOfObject);
    Cursor localCursor = this.crf.rawQuery(str, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      locala.convertFrom(localCursor);
    }
    localCursor.close();
    return locala.field_state;
  }

  public final a gD(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.w("MicroMsg.FMessageConversationStorage", "get fail, encryptTalker is null");
      return null;
    }
    String str = "select * from fmessage_conversation  where encryptTalker=" + i.bQ(paramString);
    Cursor localCursor = this.crf.rawQuery(str, null);
    int i = localCursor.getCount();
    a locala = null;
    if (i != 0)
    {
      locala = new a();
      localCursor.moveToFirst();
      locala.convertFrom(localCursor);
    }
    localCursor.close();
    return locala;
  }

  public final boolean gE(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      aa.w("MicroMsg.FMessageConversationStorage", "deleteByTalker fail, talker is null");
    String str;
    do
    {
      return false;
      str = "delete from fmessage_conversation where talker = '" + cj.hR(paramString) + "'";
    }
    while (!this.crf.aQ("fmessage_conversation", str));
    aa.d("MicroMsg.FMessageConversationStorage", "deleteByTalker success, talker = " + paramString);
    th(paramString);
    return true;
  }

  public final int getCount()
  {
    Cursor localCursor = this.crf.rawQuery("select count(*) from fmessage_conversation", null);
    boolean bool = localCursor.moveToLast();
    int i = 0;
    if (bool)
      i = localCursor.getInt(0);
    localCursor.close();
    aa.d("MicroMsg.FMessageConversationStorage", "getCount = " + i);
    return i;
  }

  public final boolean v(String paramString, int paramInt)
  {
    if ((paramString == null) || (paramString.length() == 0))
      aa.w("MicroMsg.FMessageConversationStorage", "updateState fail, talker is null");
    a locala;
    do
    {
      return false;
      locala = gB(paramString);
      if (locala == null)
      {
        aa.w("MicroMsg.FMessageConversationStorage", "updateState fail, get fail, talker = " + paramString);
        return false;
      }
      if (paramInt == locala.field_state)
      {
        aa.d("MicroMsg.FMessageConversationStorage", "updateState, no need to update");
        return true;
      }
      locala.field_state = paramInt;
      locala.field_lastModifiedTime = System.currentTimeMillis();
    }
    while (!super.a(locala, new String[0]));
    th(paramString);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ah.b
 * JD-Core Version:    0.6.2
 */