package com.tencent.mm.storage;

import android.database.Cursor;
import com.tencent.mm.ap.g;
import com.tencent.mm.ap.h;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public final class c extends ah
  implements h
{
  public static final String[] bRN = { "CREATE INDEX IF NOT EXISTS serverChatRoomUserIndex ON chatroom ( chatroomname )" };
  public static final String[] cjC;
  private af crf;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(b.cfX, "chatroom");
    cjC = arrayOfString;
  }

  public c(af paramaf)
  {
    super(paramaf, b.cfX, "chatroom", bRN);
    this.crf = paramaf;
  }

  private static List tp(String paramString)
  {
    LinkedList localLinkedList = new LinkedList();
    if (paramString.equals(""))
      return localLinkedList;
    String[] arrayOfString = paramString.split(";");
    for (int i = 0; i < arrayOfString.length; i++)
      localLinkedList.add(arrayOfString[i]);
    return localLinkedList;
  }

  public final int a(g paramg)
  {
    return 0;
  }

  public final List aAn()
  {
    aa.d("MicroMsg.ChatroomStorage", "getAllGroupCard : select * from chatroom where chatroomname like '%@groupcard'");
    Cursor localCursor = this.crf.rawQuery("select * from chatroom where chatroomname like '%@groupcard'", null);
    int i = localCursor.getCount();
    String str = "";
    if (i == 0)
    {
      localCursor.close();
      return null;
    }
    localCursor.moveToFirst();
    do
    {
      b localb = new b();
      localb.convertFrom(localCursor);
      str = str + localb.field_chatroomname + ";";
    }
    while (localCursor.moveToNext());
    localCursor.close();
    return tp(str);
  }

  public final boolean b(b paramb)
  {
    if (super.a(paramb))
    {
      th(paramb.field_chatroomname);
      return true;
    }
    aa.w("MicroMsg.ChatroomStorage", "replace error");
    return false;
  }

  public final String cu(String paramString)
  {
    int i = 1;
    boolean bool;
    Cursor localCursor;
    int j;
    if (paramString.length() > 0)
    {
      bool = i;
      Assert.assertTrue(bool);
      String str = "select displayname from chatroom where chatroomname='" + cj.hR(paramString) + "'";
      localCursor = this.crf.rawQuery(str, null);
      j = localCursor.getCount();
      if (j > i)
        break label119;
    }
    while (true)
    {
      Assert.assertTrue(i);
      if (j > 0)
        break label124;
      aa.e("MicroMsg.ChatroomStorage", "getDisplayName:" + paramString + " getCount ==0");
      localCursor.close();
      return null;
      bool = false;
      break;
      label119: i = 0;
    }
    label124: localCursor.moveToFirst();
    b localb = new b();
    localb.convertFrom(localCursor);
    localCursor.close();
    return localb.field_displayname;
  }

  public final void h(String paramString, long paramLong)
  {
    String str = "update chatroom set modifytime = " + paramLong + " where chatroomname = '" + cj.hR(paramString) + "'";
    this.crf.aQ("chatroom", str);
  }

  public final b ts(String paramString)
  {
    b localb = new b();
    localb.field_chatroomname = paramString;
    if (super.c(localb, new String[] { "chatroomname" }))
      return localb;
    return null;
  }

  public final b tt(String paramString)
  {
    b localb = new b();
    localb.field_chatroomname = paramString;
    if (super.c(localb, new String[] { "chatroomname" }));
    return localb;
  }

  public final String tu(String paramString)
  {
    int i = 1;
    boolean bool;
    Cursor localCursor;
    int j;
    if (paramString.length() > 0)
    {
      bool = i;
      Assert.assertTrue(bool);
      String str = "select memberlist from chatroom where chatroomname='" + cj.hR(paramString) + "'";
      localCursor = this.crf.rawQuery(str, null);
      j = localCursor.getCount();
      if (j > i)
        break label119;
    }
    while (true)
    {
      Assert.assertTrue(i);
      if (j > 0)
        break label124;
      aa.e("MicroMsg.ChatroomStorage", "getMemberListByChatroomName chatroomName:" + paramString + " getCount ==0");
      localCursor.close();
      return null;
      bool = false;
      break;
      label119: i = 0;
    }
    label124: localCursor.moveToFirst();
    b localb = new b();
    localb.convertFrom(localCursor);
    localCursor.close();
    return localb.field_memberlist;
  }

  public final List tv(String paramString)
  {
    String str = tu(paramString);
    if (str == null)
      return null;
    return tp(str);
  }

  public final boolean tw(String paramString)
  {
    int i = 1;
    String str = "select * from chatroom where chatroomname='" + cj.hR(paramString) + "'";
    Cursor localCursor = this.crf.rawQuery(str, null);
    int j = localCursor.getCount();
    if (j <= i);
    while (true)
    {
      Assert.assertTrue(i);
      if (j > 0)
        break;
      aa.e("MicroMsg.ChatroomStorage", "getMemberListByChatroomName chatroomName:" + paramString + " getCount ==0");
      localCursor.close();
      return false;
      i = 0;
    }
    localCursor.moveToFirst();
    b localb = new b();
    localb.convertFrom(localCursor);
    localCursor.close();
    return localb.aAl();
  }

  public final boolean tx(String paramString)
  {
    if (paramString.length() > 0);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      if (this.crf.delete("chatroom", "chatroomname=?", new String[] { paramString }) != 0)
        break;
      return false;
    }
    th(paramString);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.c
 * JD-Core Version:    0.6.2
 */