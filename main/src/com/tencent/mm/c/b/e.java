package com.tencent.mm.c.b;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.e.ad;

public abstract class e extends ad
{
  public static final String[] bRN = new String[0];
  private static final int bSe = "rowid".hashCode();
  private static final int bTk = "chatroomname".hashCode();
  private static final int bTl = "addtime".hashCode();
  private static final int bTm = "memberlist".hashCode();
  private static final int bTn = "displayname".hashCode();
  private static final int bTo = "chatroomnick".hashCode();
  private static final int bTp = "roomflag".hashCode();
  private static final int bTq = "roomowner".hashCode();
  private static final int bTr = "roomdata".hashCode();
  private static final int bTs = "isShowname".hashCode();
  private static final int bTt = "selfDisplayName".hashCode();
  private static final int bTu = "style".hashCode();
  private static final int bTv = "chatroomdataflag".hashCode();
  private static final int bTw = "modifytime".hashCode();
  public long field_addtime;
  public int field_chatroomdataflag;
  public String field_chatroomname;
  public String field_chatroomnick;
  public String field_displayname;
  public int field_isShowname;
  public String field_memberlist;
  public long field_modifytime;
  public byte[] field_roomdata;
  public int field_roomflag;
  public String field_roomowner;
  public String field_selfDisplayName;
  public int field_style;

  public void convertFrom(Cursor paramCursor)
  {
    String[] arrayOfString = paramCursor.getColumnNames();
    if (arrayOfString == null)
      return;
    int i = 0;
    int j = arrayOfString.length;
    label18: int k;
    if (i < j)
    {
      k = arrayOfString[i].hashCode();
      if (bTk != k)
        break label57;
      this.field_chatroomname = paramCursor.getString(i);
    }
    while (true)
    {
      i++;
      break label18;
      break;
      label57: if (bTl == k)
        this.field_addtime = paramCursor.getLong(i);
      else if (bTm == k)
        this.field_memberlist = paramCursor.getString(i);
      else if (bTn == k)
        this.field_displayname = paramCursor.getString(i);
      else if (bTo == k)
        this.field_chatroomnick = paramCursor.getString(i);
      else if (bTp == k)
        this.field_roomflag = paramCursor.getInt(i);
      else if (bTq == k)
        this.field_roomowner = paramCursor.getString(i);
      else if (bTr == k)
        this.field_roomdata = paramCursor.getBlob(i);
      else if (bTs == k)
        this.field_isShowname = paramCursor.getInt(i);
      else if (bTt == k)
        this.field_selfDisplayName = paramCursor.getString(i);
      else if (bTu == k)
        this.field_style = paramCursor.getInt(i);
      else if (bTv == k)
        this.field_chatroomdataflag = paramCursor.getInt(i);
      else if (bTw == k)
        this.field_modifytime = paramCursor.getLong(i);
      else if (bSe == k)
        this.gfy = paramCursor.getLong(i);
    }
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    if (this.field_chatroomname == null)
      this.field_chatroomname = "";
    localContentValues.put("chatroomname", this.field_chatroomname);
    localContentValues.put("addtime", Long.valueOf(this.field_addtime));
    localContentValues.put("memberlist", this.field_memberlist);
    localContentValues.put("displayname", this.field_displayname);
    localContentValues.put("chatroomnick", this.field_chatroomnick);
    localContentValues.put("roomflag", Integer.valueOf(this.field_roomflag));
    localContentValues.put("roomowner", this.field_roomowner);
    localContentValues.put("roomdata", this.field_roomdata);
    localContentValues.put("isShowname", Integer.valueOf(this.field_isShowname));
    localContentValues.put("selfDisplayName", this.field_selfDisplayName);
    localContentValues.put("style", Integer.valueOf(this.field_style));
    localContentValues.put("chatroomdataflag", Integer.valueOf(this.field_chatroomdataflag));
    localContentValues.put("modifytime", Long.valueOf(this.field_modifytime));
    if (this.gfy > 0L)
      localContentValues.put("rowid", Long.valueOf(this.gfy));
    return localContentValues;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.c.b.e
 * JD-Core Version:    0.6.2
 */