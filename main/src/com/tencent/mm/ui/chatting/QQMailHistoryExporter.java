package com.tencent.mm.ui.chatting;

import android.content.Context;
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
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.al;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public final class QQMailHistoryExporter
{
  private static final String gRc = "<img id=\"%d:%d\" src=\"%s\" height=\"100\" onclick=\"" + com.tencent.mm.pluginsdk.ui.tools.aa.aI("img_onclick", "this.id + '@@' + this.src") + "\"></img>";
  private static final char[] gfu = { 60, 62, 34, 39, 38, 10 };
  private static final String[] gfv = { "&lt;", "&gt;", "&quot;", "&apos;", "&amp;", "<br />" };
  private Context context;
  private i eSm = null;
  private List gMg;
  private String gQY = null;

  public QQMailHistoryExporter(Context paramContext, List paramList, i parami)
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
        com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.QQMailHistoryExporter", "isSend");
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

  private static String ch(long paramLong)
  {
    return new SimpleDateFormat("yyyy-MM-dd").format(new Date(paramLong));
  }

  private static String sS(String paramString)
  {
    if (paramString == null)
      return "";
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramString.length();
    int j = 0;
    if (j < i)
    {
      char c = paramString.charAt(j);
      int k = 1;
      for (int m = -1 + gfu.length; ; m--)
        if (m >= 0)
        {
          if (gfu[m] == c)
          {
            localStringBuffer.append(gfv[m]);
            k = 0;
          }
        }
        else
        {
          if (k != 0)
            localStringBuffer.append(c);
          j++;
          break;
        }
    }
    return localStringBuffer.toString();
  }

  public final String aKg()
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(this.gMg.size());
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.QQMailHistoryExporter", "selectItems.size = %d", arrayOfObject1);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<div id=\"history\">\n");
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = aKh();
    localStringBuilder.append(String.format("<p>Dear:</p> <br> <p style=\"text-indent:2em;\">%s</p> <br>", arrayOfObject2));
    Iterator localIterator = this.gMg.iterator();
    ak localak;
    label151: String str18;
    if (localIterator.hasNext())
    {
      localak = (ak)localIterator.next();
      if (this.gQY == null)
      {
        this.gQY = ch(localak.DL());
        Object[] arrayOfObject26 = new Object[1];
        arrayOfObject26[0] = this.gQY;
        localStringBuilder.append(String.format("<p style=\"text-align:center;\"><span style=\"color:#b8b8b8;\">—————  %s  —————</span></p>\n \n", arrayOfObject26));
        if (!localak.aCc())
          break label419;
        if (!localak.aCc())
          break label413;
        if (localak.rO() != 1)
          break label290;
        Object[] arrayOfObject25 = new Object[2];
        arrayOfObject25[0] = R(localak);
        arrayOfObject25[1] = sS(localak.getContent());
        str18 = String.format("<p><b>%s</b></p>\n  <p>%s</p>\n <p style=\"line-height:1.5em;\"></p>\n", arrayOfObject25);
      }
    }
    label413: 
    while (true)
    {
      localStringBuilder.append(str18);
      break;
      String str1 = ch(localak.DL());
      if (str1.equals(this.gQY))
        break label151;
      this.gQY = str1;
      localStringBuilder.append("<br>");
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = this.gQY;
      localStringBuilder.append(String.format("<p style=\"text-align:center;\"><span style=\"color:#b8b8b8;\">—————  %s  —————</span></p>\n \n", arrayOfObject3));
      break label151;
      label290: if (!this.eSm.getUsername().endsWith("@chatroom"))
      {
        Object[] arrayOfObject24 = new Object[2];
        arrayOfObject24[0] = R(localak);
        arrayOfObject24[1] = sS(localak.getContent());
        str18 = String.format("<p><b>%s</b></p>\n  <p>%s</p>\n <p style=\"line-height:1.5em;\"></p>\n", arrayOfObject24);
      }
      else
      {
        int j = bv.dw(localak.getContent());
        if (j != -1)
        {
          Object[] arrayOfObject23 = new Object[2];
          arrayOfObject23[0] = R(localak);
          arrayOfObject23[1] = sS(localak.getContent().substring(j + 1).trim());
          str18 = String.format("<p><b>%s</b></p>\n  <p>%s</p>\n <p style=\"line-height:1.5em;\"></p>\n", arrayOfObject23);
          continue;
          str18 = null;
          continue;
          label419: if (localak.aBY())
          {
            Object[] arrayOfObject22;
            if (localak.aBY())
            {
              long l1 = localak.Bo();
              long l2 = localak.AH();
              String str14 = kh.nG((int)l1);
              if (cj.hX(str14))
                str14 = kh.nH((int)l2);
              com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.QQMailHistoryExporter", "hdPath[%s]", new Object[] { str14 });
              if (!cj.hX(str14))
              {
                String str15 = "file://" + str14;
                String str16 = gRc;
                Object[] arrayOfObject21 = new Object[4];
                arrayOfObject21[0] = Long.valueOf(localak.Bo());
                arrayOfObject21[1] = Integer.valueOf(localak.AH());
                arrayOfObject21[2] = str15;
                arrayOfObject21[3] = str14;
                String str17 = String.format(str16, arrayOfObject21);
                arrayOfObject22 = new Object[2];
                arrayOfObject22[0] = R(localak);
                arrayOfObject22[1] = str17;
              }
            }
            for (String str13 = String.format("<p><b>%s</b></p>\n  <p>%s</p>\n <p style=\"line-height:1.5em;\"></p>\n", arrayOfObject22); ; str13 = null)
            {
              localStringBuilder.append(str13);
              break;
            }
          }
          String str2;
          if (localak.aBV())
          {
            Object[] arrayOfObject20 = new Object[1];
            arrayOfObject20[0] = this.context.getString(2131165712);
            str2 = String.format("[%s]", arrayOfObject20);
          }
          while (true)
          {
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.QQMailHistoryExporter", "formatOtherMsg, msgStr = %s", new Object[] { str2 });
            Object[] arrayOfObject4 = new Object[2];
            arrayOfObject4[0] = R(localak);
            arrayOfObject4[1] = str2;
            localStringBuilder.append(String.format("<p><b>%s</b></p>\n  <p>%s</p>\n <p style=\"line-height:1.5em;\"></p>\n", arrayOfObject4));
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
              String str4 = localak.getContent();
              if (this.eSm.getUsername().endsWith("@chatroom"))
              {
                com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.QQMailHistoryExporter", "chatroom msg, parse it");
                int i = bv.dw(localak.getContent());
                if (i != -1)
                  str4 = sS(localak.getContent().substring(i + 1).trim());
              }
              com.tencent.mm.j.b localb = com.tencent.mm.j.b.bR(cj.sT(str4));
              if (localb == null)
              {
                com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.QQMailHistoryExporter", "appmsg content is null");
                Object[] arrayOfObject19 = new Object[1];
                arrayOfObject19[0] = this.context.getString(2131165717);
                str2 = String.format("[%s]", arrayOfObject19);
              }
              else
              {
                k localk = l.F(localb.appId, true);
                if ((localk == null) || (cj.hX(localk.field_appName)));
                String str6;
                for (String str5 = localb.appName; ; str5 = localk.field_appName)
                {
                  str6 = l.a(this.context, localk, str5);
                  if (!localak.aCf())
                    break label1083;
                  if (!cj.hX(str6))
                    break label1049;
                  str2 = localb.title;
                  break;
                }
                Object[] arrayOfObject18 = new Object[2];
                arrayOfObject18[0] = str6;
                arrayOfObject18[1] = localb.title;
                str2 = String.format("[%s: %s]", arrayOfObject18);
                continue;
                label1083: if (localak.aCg())
                {
                  String str10 = kh.a(localak, localb);
                  if (!cj.hX(str10))
                  {
                    String str11 = "file://" + str10;
                    String str12 = gRc;
                    Object[] arrayOfObject17 = new Object[4];
                    arrayOfObject17[0] = Long.valueOf(localak.Bo());
                    arrayOfObject17[1] = Integer.valueOf(localak.AH());
                    arrayOfObject17[2] = str11;
                    arrayOfObject17[3] = str10;
                    str2 = String.format(str12, arrayOfObject17);
                  }
                }
                else
                {
                  switch (localb.type)
                  {
                  case 7:
                  default:
                    Object[] arrayOfObject16 = new Object[1];
                    arrayOfObject16[0] = this.context.getString(2131165717);
                    str2 = String.format("[%s]", arrayOfObject16);
                    break;
                  case 3:
                    if (cj.hX(localb.description))
                    {
                      Object[] arrayOfObject15 = new Object[2];
                      arrayOfObject15[0] = this.context.getString(2131165720);
                      arrayOfObject15[1] = localb.title;
                      str2 = String.format("[%s: %s]", arrayOfObject15);
                      continue;
                    }
                    Object[] arrayOfObject14 = new Object[3];
                    arrayOfObject14[0] = this.context.getString(2131165720);
                    arrayOfObject14[1] = localb.title;
                    arrayOfObject14[2] = localb.description;
                    str2 = String.format("[%s: %s-%s]", arrayOfObject14);
                    break;
                  case 8:
                    Object[] arrayOfObject13 = new Object[1];
                    arrayOfObject13[0] = this.context.getString(2131165718);
                    str2 = String.format("[%s]", arrayOfObject13);
                    break;
                  case 6:
                    if (cj.hX(localb.description))
                    {
                      Object[] arrayOfObject12 = new Object[2];
                      arrayOfObject12[0] = this.context.getString(2131165721);
                      arrayOfObject12[1] = localb.title;
                      str2 = String.format("[%s: %s]", arrayOfObject12);
                      continue;
                    }
                    Object[] arrayOfObject11 = new Object[3];
                    arrayOfObject11[0] = this.context.getString(2131165721);
                    arrayOfObject11[1] = localb.title;
                    arrayOfObject11[2] = localb.description;
                    str2 = String.format("[%s: %s-%s]", arrayOfObject11);
                    break;
                  case 2:
                    String str7 = kh.a(localak, localb);
                    if (cj.hX(str7))
                      break label1874;
                    String str8 = "file://" + str7;
                    String str9 = gRc;
                    Object[] arrayOfObject10 = new Object[4];
                    arrayOfObject10[0] = Long.valueOf(localak.Bo());
                    arrayOfObject10[1] = Integer.valueOf(localak.AH());
                    arrayOfObject10[2] = str8;
                    arrayOfObject10[3] = str7;
                    str2 = String.format(str9, arrayOfObject10);
                    break;
                  case 1:
                    if (cj.hX(str6))
                    {
                      str2 = localb.title;
                      continue;
                    }
                    Object[] arrayOfObject9 = new Object[2];
                    arrayOfObject9[0] = str6;
                    arrayOfObject9[1] = localb.title;
                    str2 = String.format("[%s: %s]", arrayOfObject9);
                    break;
                  case 4:
                  case 5:
                    Object[] arrayOfObject8 = new Object[2];
                    arrayOfObject8[0] = localb.title;
                    arrayOfObject8[1] = localb.url;
                    str2 = String.format("[%s: %s]", arrayOfObject8);
                    break;
                  }
                }
              }
            }
            else if (localak.aCa())
            {
              String str3 = be.uz().sw().vj(localak.getContent()).kn();
              Object[] arrayOfObject7 = new Object[2];
              arrayOfObject7[0] = this.context.getString(2131165715);
              arrayOfObject7[1] = str3;
              str2 = String.format("[%s: %s]", arrayOfObject7);
            }
            else if (localak.MP())
            {
              Object[] arrayOfObject6 = new Object[1];
              arrayOfObject6[0] = this.context.getString(2131165716);
              str2 = String.format("[%s]", arrayOfObject6);
            }
            else if ((localak.aCd()) || (localak.aCe()))
            {
              Object[] arrayOfObject5 = new Object[1];
              arrayOfObject5[0] = this.context.getString(2131165718);
              str2 = String.format("[%s]", arrayOfObject5);
              continue;
              localStringBuilder.append("\n</div>\n");
              return localStringBuilder.toString();
            }
            else
            {
              str2 = null;
              continue;
              label1874: str2 = "";
            }
          }
        }
        else
        {
          str18 = null;
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.QQMailHistoryExporter
 * JD-Core Version:    0.6.2
 */