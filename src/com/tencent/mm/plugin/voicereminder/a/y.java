package com.tencent.mm.plugin.voicereminder.a;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.a.f;
import com.tencent.mm.c.b.ai;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.platformtools.aa;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import junit.framework.Assert;

public final class y extends ah
{
  private static long cBe = 0L;
  public static final String[] cjC;
  private af crf;
  private Map ePq = new HashMap();

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(m.cfX, "VoiceRemindInfo");
    cjC = arrayOfString;
  }

  public y(af paramaf)
  {
    super(paramaf, m.cfX, "VoiceRemindInfo", ai.bRN);
    this.crf = paramaf;
  }

  public static String gY(String paramString)
  {
    long l1 = System.currentTimeMillis();
    String str1 = new SimpleDateFormat("ssHHmmMMddyy").format(new Date(l1));
    if ((paramString != null) && (paramString.length() > 1))
      str1 = str1 + f.h(paramString.getBytes()).substring(0, 7);
    String str2 = str1 + l1 % 10000L;
    StringBuilder localStringBuilder = new StringBuilder().append(str2);
    long l2 = cBe;
    cBe = 1L + l2;
    return l2;
  }

  public final List DU()
  {
    String str1 = "SELECT filename, user, msgid, offset, filenowsize, totallen, status, createtime, lastmodifytime, clientid, voicelenght, msglocalid, human, voiceformat, nettimes, reserved1, reserved2" + " FROM VoiceRemindInfo";
    String str2 = str1 + " WHERE status<97  order by createtime";
    Cursor localCursor = this.crf.rawQuery(str2, null);
    int i = localCursor.getCount();
    aa.d("MicroMsg.VoiceRemindStorage", "getUnfinishInfo resCount:" + i);
    if (i == 0)
    {
      localCursor.close();
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    for (int j = 0; j < i; j++)
    {
      localCursor.moveToPosition(j);
      m localm = new m();
      localm.convertFrom(localCursor);
      localArrayList.add(localm);
    }
    localCursor.close();
    return localArrayList;
  }

  public final boolean a(String paramString, m paramm)
  {
    boolean bool1;
    boolean bool2;
    label20: ContentValues localContentValues;
    if (paramString.length() > 0)
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      if (paramm == null)
        break label53;
      bool2 = true;
      Assert.assertTrue(bool2);
      localContentValues = paramm.oa();
      if (localContentValues.size() > 0)
        break label59;
      aa.e("MicroMsg.VoiceRemindStorage", "update failed, no values set");
    }
    label53: label59: 
    while (this.crf.update("VoiceRemindInfo", localContentValues, "filename= ?", new String[] { paramString }) <= 0)
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

  public final int b(m paramm)
  {
    aa.d("MicroMsg.VoiceRemindStorage", "VoiceRemindStorage Insert");
    if (paramm == null)
      return -1;
    ContentValues localContentValues = paramm.oa();
    int i = (int)this.crf.insert("VoiceRemindInfo", "", localContentValues);
    aa.d("MicroMsg.VoiceRemindStorage", "VoiceRemindStorage Insert result" + i);
    return i;
  }

  public final void hy(String paramString)
  {
    d locald = (d)this.ePq.get(paramString);
    if (locald != null)
    {
      locald.Eb();
      this.ePq.remove(paramString);
    }
  }

  public final boolean hz(String paramString)
  {
    if (paramString.length() > 0);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      if (this.crf.delete("VoiceRemindInfo", "filename= ?", new String[] { paramString }) <= 0)
        aa.w("MicroMsg.VoiceRemindStorage", "delete failed, no such file:" + paramString);
      return true;
    }
  }

  public final d po(String paramString)
  {
    if (this.ePq.get(paramString) == null)
      this.ePq.put(paramString, new d(paramString));
    return (d)this.ePq.get(paramString);
  }

  public final m pp(String paramString)
  {
    String str = "SELECT filename, user, msgid, offset, filenowsize, totallen, status, createtime, lastmodifytime, clientid, voicelenght, msglocalid, human, voiceformat, nettimes, reserved1, reserved2" + " FROM VoiceRemindInfo WHERE filename= ?";
    Cursor localCursor = this.crf.rawQuery(str, new String[] { paramString });
    boolean bool = localCursor.moveToFirst();
    m localm = null;
    if (bool)
    {
      localm = new m();
      localm.convertFrom(localCursor);
    }
    localCursor.close();
    return localm;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.y
 * JD-Core Version:    0.6.2
 */