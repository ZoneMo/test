package com.tencent.mm.modelvoice;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.ap.i;
import com.tencent.mm.model.u;
import com.tencent.mm.sdk.e.ai;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import junit.framework.Assert;

public final class br extends ai
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS voiceinfo ( FileName TEXT PRIMARY KEY, User TEXT, MsgId INT, NetOffset INT, FileNowSize INT, TotalLen INT, Status INT, CreateTime INT, LastModifyTime INT, ClientId TEXT, VoiceLength INT, MsgLocalId INT, Human TEXT, reserved1 INT, reserved2 TEXT )", "CREATE INDEX IF NOT EXISTS voiceinfomsgidindex ON voiceinfo ( MsgId ) ", "CREATE UNIQUE INDEX IF NOT EXISTS voiceinfouniqueindex ON voiceinfo ( FileName )", "DELETE FROM voiceinfo WHERE Status = 99" };
  private Map cDm = new HashMap();
  private Map cDn = new HashMap();
  private i cjB;

  public br(i parami)
  {
    this.cjB = parami;
  }

  public static String hx(String paramString)
  {
    return u.a(paramString, cj.FD());
  }

  public final List DU()
  {
    String str1 = "SELECT FileName, User, MsgId, NetOffset, FileNowSize, TotalLen, Status, CreateTime, LastModifyTime, ClientId, VoiceLength, MsgLocalId, Human, reserved1, reserved2" + " FROM voiceinfo";
    String str2 = str1 + " WHERE Status<97 and User!=\"_USER_FOR_THROWBOTTLE_\"   order by CreateTime";
    Cursor localCursor = this.cjB.rawQuery(str2, null);
    int i = localCursor.getCount();
    aa.d("MicroMsg.VoiceStorage", "getUnfinishInfo resCount:" + i);
    if (i == 0)
    {
      localCursor.close();
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    for (int j = 0; j < i; j++)
    {
      localCursor.moveToPosition(j);
      bh localbh = new bh();
      localbh.convertFrom(localCursor);
      localArrayList.add(localbh);
    }
    localCursor.close();
    return localArrayList;
  }

  public final boolean a(String paramString, bh parambh)
  {
    boolean bool1;
    boolean bool2;
    label20: ContentValues localContentValues;
    if (paramString.length() > 0)
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      if (parambh == null)
        break label53;
      bool2 = true;
      Assert.assertTrue(bool2);
      localContentValues = parambh.oa();
      if (localContentValues.size() > 0)
        break label59;
      aa.e("MicroMsg.VoiceStorage", "update failed, no values set");
    }
    label53: label59: 
    while (this.cjB.update("voiceinfo", localContentValues, "FileName= ?", new String[] { paramString }) <= 0)
    {
      return false;
      bool1 = false;
      break;
      bool2 = false;
      break label20;
    }
    Ei();
    return true;
  }

  public final boolean c(bh parambh)
  {
    boolean bool;
    ContentValues localContentValues;
    if (parambh != null)
    {
      bool = true;
      Assert.assertTrue(bool);
      localContentValues = parambh.oa();
      if (localContentValues.size() > 0)
        break label36;
      aa.e("MicroMsg.VoiceStorage", "insert falied, no values set");
    }
    label36: 
    while (this.cjB.insert("voiceinfo", "FileName", localContentValues) == -1L)
    {
      return false;
      bool = false;
      break;
    }
    Ei();
    return true;
  }

  public final bh eE(int paramInt)
  {
    String str = "SELECT FileName, User, MsgId, NetOffset, FileNowSize, TotalLen, Status, CreateTime, LastModifyTime, ClientId, VoiceLength, MsgLocalId, Human, reserved1, reserved2" + " FROM voiceinfo WHERE MsgId=" + paramInt;
    Cursor localCursor = this.cjB.rawQuery(str, null);
    boolean bool = localCursor.moveToFirst();
    bh localbh = null;
    if (bool)
    {
      localbh = new bh();
      localbh.convertFrom(localCursor);
    }
    localCursor.close();
    return localbh;
  }

  public final bh eF(int paramInt)
  {
    String str = "SELECT FileName, User, MsgId, NetOffset, FileNowSize, TotalLen, Status, CreateTime, LastModifyTime, ClientId, VoiceLength, MsgLocalId, Human, reserved1, reserved2" + " FROM voiceinfo WHERE MsgLocalId=" + paramInt;
    Cursor localCursor = this.cjB.rawQuery(str, null);
    boolean bool = localCursor.moveToFirst();
    bh localbh = null;
    if (bool)
    {
      localbh = new bh();
      localbh.convertFrom(localCursor);
    }
    localCursor.close();
    return localbh;
  }

  public final bh hA(String paramString)
  {
    if (paramString == null)
      return null;
    String str = "SELECT FileName, User, MsgId, NetOffset, FileNowSize, TotalLen, Status, CreateTime, LastModifyTime, ClientId, VoiceLength, MsgLocalId, Human, reserved1, reserved2" + " FROM voiceinfo WHERE FileName= ?";
    Cursor localCursor = this.cjB.rawQuery(str, new String[] { paramString });
    aa.d("MicroMsg.VoiceStorage", "getInfoByFilename fileName[" + paramString + "] ResCount:" + localCursor.getCount());
    boolean bool = localCursor.moveToFirst();
    bh localbh = null;
    if (bool)
    {
      localbh = new bh();
      localbh.convertFrom(localCursor);
    }
    localCursor.close();
    return localbh;
  }

  public final bh hB(String paramString)
  {
    String str = "SELECT FileName, User, MsgId, NetOffset, FileNowSize, TotalLen, Status, CreateTime, LastModifyTime, ClientId, VoiceLength, MsgLocalId, Human, reserved1, reserved2" + " FROM voiceinfo WHERE FileName= ?";
    Cursor localCursor = this.cjB.rawQuery(str, new String[] { paramString });
    boolean bool = localCursor.moveToFirst();
    bh localbh = null;
    if (bool)
    {
      localbh = new bh();
      localbh.convertFrom(localCursor);
    }
    localCursor.close();
    return localbh;
  }

  public final void hy(String paramString)
  {
    String str = bi.fU(paramString);
    switch (bg.hl(paramString))
    {
    default:
      a locala2 = (a)this.cDm.get(str);
      if (locala2 != null)
      {
        locala2.Eb();
        this.cDm.remove(str);
      }
      break;
    case 0:
    case 1:
    }
    bb localbb;
    do
    {
      a locala1;
      do
      {
        return;
        locala1 = (a)this.cDm.get(str);
      }
      while (locala1 == null);
      locala1.Eb();
      this.cDm.remove(str);
      return;
      localbb = (bb)this.cDn.get(str);
    }
    while (localbb == null);
    localbb.Eb();
    this.cDn.remove(str);
  }

  public final boolean hz(String paramString)
  {
    if (paramString.length() > 0);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      if (this.cjB.delete("voiceinfo", "FileName= ?", new String[] { paramString }) <= 0)
        aa.w("MicroMsg.VoiceStorage", "delete failed, no such file:" + paramString);
      return true;
    }
  }

  public final b o(String paramString, boolean paramBoolean)
  {
    String str = bi.fU(paramString);
    if (paramBoolean)
    {
      if (this.cDm.get(str) == null)
        this.cDm.put(str, new a(str));
      return (b)this.cDm.get(str);
    }
    switch (bg.hl(paramString))
    {
    default:
      if (this.cDm.get(str) == null)
        this.cDm.put(str, new a(str));
      return (b)this.cDm.get(str);
    case 0:
      if (this.cDm.get(str) == null)
        this.cDm.put(str, new a(str));
      return (b)this.cDm.get(str);
    case 1:
    }
    if (this.cDn.get(str) == null)
      this.cDn.put(str, new bb(str));
    return (b)this.cDn.get(str);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.br
 * JD-Core Version:    0.6.2
 */