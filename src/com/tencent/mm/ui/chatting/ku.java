package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.net.Uri;
import com.tencent.mm.c.a.dd;
import com.tencent.mm.c.a.df;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.r;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.al;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public final class ku
{
  private Context context;
  private i eSm = null;
  private List gMg;
  private String gQY = null;
  private SimpleDateFormat gQZ = new SimpleDateFormat("yyyy-MM-dd");
  private String gRa = null;
  private ArrayList gRb = new ArrayList();

  public ku(Context paramContext, List paramList, i parami)
  {
    this.context = paramContext;
    this.gMg = paramList;
    this.eSm = parami;
  }

  private String R(ak paramak)
  {
    String str2;
    if (!this.eSm.getUsername().endsWith("@chatroom"))
      str2 = w.cu(paramak.aCl());
    while (true)
    {
      if (paramak.rO() == 1)
      {
        aa.i("MicroMsg.OtherMailHistoryExporter", "isSend");
        str2 = v.tj();
      }
      long l = paramak.DL();
      String str3 = new SimpleDateFormat("HH:mm").format(new Date(l));
      StringBuilder localStringBuilder = new StringBuilder("");
      localStringBuilder.append(str2);
      localStringBuilder.append("  ");
      localStringBuilder.append(str3);
      return localStringBuilder.toString();
      String str1 = paramak.getContent();
      int i = bv.dw(str1);
      str2 = null;
      if (i != -1)
        str2 = w.cu(str1.substring(0, i).trim());
    }
  }

  private String aKh()
  {
    if (!this.eSm.getUsername().endsWith("@chatroom"))
    {
      String str4 = this.context.getString(2131165729);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.eSm.rq();
      arrayOfObject[1] = be.uz().sr().get(4);
      return String.format(str4, arrayOfObject);
    }
    String str2;
    if (cj.hX(this.eSm.kn()))
    {
      Iterator localIterator = r.cg(this.eSm.getUsername()).iterator();
      String str3;
      for (str2 = ""; localIterator.hasNext(); str2 = str2 + str3 + ", ")
        str3 = w.cu((String)localIterator.next());
    }
    for (String str1 = str2.substring(0, -2 + str2.length()); ; str1 = this.eSm.rq())
      return String.format(this.context.getString(2131165730), new Object[] { str1 });
  }

  private String ch(long paramLong)
  {
    return this.gQZ.format(new Date(paramLong));
  }

  public final ArrayList aKf()
  {
    Object[] arrayOfObject = new Object[2];
    if (this.gRa == null);
    for (boolean bool = true; ; bool = false)
    {
      arrayOfObject[0] = Boolean.valueOf(bool);
      arrayOfObject[1] = Integer.valueOf(this.gMg.size());
      aa.e("MicroMsg.OtherMailHistoryExporter", "get image attach: history is null? %B, selectItems.size = %d", arrayOfObject);
      if (this.gRa == null)
        break;
      return this.gRb;
    }
    aa.w("MicroMsg.OtherMailHistoryExporter", "had not exported, do export first");
    aKg();
    return this.gRb;
  }

  public final String aKg()
  {
    Object[] arrayOfObject1 = new Object[2];
    if (this.gRa == null);
    for (boolean bool = true; ; bool = false)
    {
      arrayOfObject1[0] = Boolean.valueOf(bool);
      arrayOfObject1[1] = Integer.valueOf(this.gMg.size());
      aa.e("MicroMsg.OtherMailHistoryExporter", "export: history is null? %B, selectItems.size = %d", arrayOfObject1);
      if (this.gRa == null)
        break;
      return this.gRa;
    }
    this.gRb.clear();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(aKh());
    localStringBuilder.append("\n\n");
    Iterator localIterator = this.gMg.iterator();
    ak localak;
    label178: String str9;
    if (localIterator.hasNext())
    {
      localak = (ak)localIterator.next();
      if (this.gQY == null)
      {
        this.gQY = ch(localak.DL());
        Object[] arrayOfObject14 = new Object[1];
        arrayOfObject14[0] = this.gQY;
        localStringBuilder.append(String.format("—————  %s  —————\n\n", arrayOfObject14));
        localStringBuilder.append("\n");
        if (!localak.aCc())
          break label436;
        if (!localak.aCc())
          break label430;
        if (localak.rO() != 1)
          break label313;
        Object[] arrayOfObject13 = new Object[2];
        arrayOfObject13[0] = R(localak);
        arrayOfObject13[1] = localak.getContent();
        str9 = String.format("%s\n\n%s\n\n", arrayOfObject13);
      }
    }
    label430: label436: 
    while (true)
    {
      localStringBuilder.append(str9);
      break;
      String str1 = ch(localak.DL());
      if (str1.equals(this.gQY))
        break label178;
      this.gQY = str1;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = this.gQY;
      localStringBuilder.append(String.format("—————  %s  —————\n\n", arrayOfObject2));
      localStringBuilder.append("\n");
      break label178;
      label313: if (!this.eSm.getUsername().endsWith("@chatroom"))
      {
        Object[] arrayOfObject12 = new Object[2];
        arrayOfObject12[0] = R(localak);
        arrayOfObject12[1] = localak.getContent();
        str9 = String.format("%s\n\n%s\n\n", arrayOfObject12);
      }
      else
      {
        int i = bv.dw(localak.getContent());
        if (i != -1)
        {
          Object[] arrayOfObject11 = new Object[2];
          arrayOfObject11[0] = R(localak);
          arrayOfObject11[1] = localak.getContent().substring(i + 1).trim();
          str9 = String.format("%s\n\n%s\n\n", arrayOfObject11);
          continue;
          str9 = null;
          continue;
          if (localak.aBY())
          {
            Object[] arrayOfObject10;
            if (localak.aBY())
            {
              long l1 = localak.Bo();
              long l2 = localak.AH();
              String str6 = kh.nG((int)l1);
              if (cj.hX(str6))
                str6 = kh.nH((int)l2);
              aa.e("MicroMsg.OtherMailHistoryExporter", "hdPath[%s]", new Object[] { str6 });
              if (!cj.hX(str6))
              {
                String str7 = "file://" + str6;
                this.gRb.add(Uri.parse(str7));
                Object[] arrayOfObject9 = new Object[3];
                arrayOfObject9[0] = this.context.getString(2131165719);
                arrayOfObject9[1] = new File(str6).getName();
                arrayOfObject9[2] = this.context.getString(2131165722);
                String str8 = String.format("[%s(%s):%s]", arrayOfObject9);
                arrayOfObject10 = new Object[2];
                arrayOfObject10[0] = R(localak);
                arrayOfObject10[1] = str8;
              }
            }
            for (String str5 = String.format("%s\n\n%s\n\n", arrayOfObject10); ; str5 = null)
            {
              localStringBuilder.append(str5);
              break;
            }
          }
          String str2;
          if (localak.aBV())
          {
            Object[] arrayOfObject8 = new Object[1];
            arrayOfObject8[0] = this.context.getString(2131165712);
            str2 = String.format("[%s]", arrayOfObject8);
          }
          while (true)
          {
            aa.d("MicroMsg.OtherMailHistoryExporter", "formatOtherMsg, msgStr = %s", new Object[] { str2 });
            Object[] arrayOfObject3 = new Object[2];
            arrayOfObject3[0] = R(localak);
            arrayOfObject3[1] = str2;
            localStringBuilder.append(String.format("%s\n\n%s\n\n", arrayOfObject3));
            break;
            if (localak.aBX())
            {
              if (localak.rO() == 1)
                str2 = this.context.getString(2131165713);
              else
                str2 = this.context.getString(2131165714);
            }
            else if (localak.aCb())
            {
              dd localdd = new dd();
              localdd.bOg.bOi = 1;
              localdd.bOg.bLP = localak;
              a.ayH().f(localdd);
              str2 = String.format("[%s]", new Object[] { localdd.bOh.bOl });
            }
            else if (localak.aBT())
            {
              k localk = l.F(com.tencent.mm.j.b.bR(cj.sT(localak.getContent())).appId, true);
              if (localk == null)
              {
                str2 = "";
              }
              else
              {
                String str4 = localk.field_appName;
                Object[] arrayOfObject7 = new Object[2];
                arrayOfObject7[0] = this.context.getString(2131165717);
                arrayOfObject7[1] = str4;
                str2 = String.format("[%s: %s]", arrayOfObject7);
              }
            }
            else if (localak.aCa())
            {
              String str3 = be.uz().sw().vj(localak.getContent()).kn();
              Object[] arrayOfObject6 = new Object[2];
              arrayOfObject6[0] = this.context.getString(2131165715);
              arrayOfObject6[1] = str3;
              str2 = String.format("[%s: %s]", arrayOfObject6);
            }
            else if (localak.MP())
            {
              Object[] arrayOfObject5 = new Object[1];
              arrayOfObject5[0] = this.context.getString(2131165716);
              str2 = String.format("[%s]", arrayOfObject5);
            }
            else if ((localak.aCd()) || (localak.aCe()))
            {
              Object[] arrayOfObject4 = new Object[1];
              arrayOfObject4[0] = this.context.getString(2131165718);
              str2 = String.format("[%s]", arrayOfObject4);
              continue;
              localStringBuilder.append("\n\n");
              this.gRa = localStringBuilder.toString();
              return this.gRa;
            }
            else
            {
              str2 = null;
            }
          }
        }
        else
        {
          str9 = null;
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ku
 * JD-Core Version:    0.6.2
 */