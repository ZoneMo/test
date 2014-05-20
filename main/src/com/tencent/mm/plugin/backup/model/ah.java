package com.tencent.mm.plugin.backup.model;

import android.graphics.Bitmap.CompressFormat;
import com.tencent.mm.a.c;
import com.tencent.mm.a.f;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.backup.c.a;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.pointers.PString;
import com.tencent.mm.protocal.a.ae;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.h;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.ak;
import com.tencent.mm.w.e;
import com.tencent.mm.w.g;
import java.io.File;
import java.util.LinkedList;
import java.util.Map;

public final class ah
  implements y
{
  public final int a(ae paramae, boolean paramBoolean, ak paramak, LinkedList paramLinkedList)
  {
    int i;
    e locale1;
    label67: int j;
    String str8;
    String str9;
    int n;
    if (au.hX(paramak.getContent()))
    {
      i = 0;
      if (paramak.rO() != 1)
        break label563;
      locale1 = d.Gj().Ba().dG((int)paramak.Bo());
      if ((locale1 == null) || (locale1.AG() == 0L))
        locale1 = d.Gj().Ba().dF(paramak.AH());
      String str1 = d.Gj().Ba().fX(paramak.ot());
      if (!c.as(str1))
        break label581;
      j = i + r.a(str1, paramae, paramLinkedList, 1, paramBoolean);
      if (paramak.rO() != 1)
        break label583;
      str8 = "";
      str9 = d.Gj().Ba().j(locale1.AI(), "", "");
      boolean bool3 = locale1.AM();
      n = 0;
      if (!bool3)
        break label885;
      e locale3 = d.Gj().Ba().dE(locale1.AK());
      n = 0;
      if (locale3 == null)
        break label885;
      str8 = d.Gj().Ba().j(locale3.AI(), "", "");
      aa.d("MicroMsg.MMBakItemImg", "hd bigImgPath " + str8 + " " + c.ar(str8));
      n = c.ar(str8);
      if (!c.as(str8))
        break label885;
    }
    label541: label563: label581: label583: label870: label876: label885: for (int i1 = j + r.a(str8, paramae, paramLinkedList, 3, paramBoolean); ; i1 = j)
    {
      int i2 = c.ar(str9);
      if ((!au.hX(str9)) && (!str9.equals(str8)))
      {
        aa.d("MicroMsg.MMBakItemImg", "bigImgPath " + str9 + " " + c.ar(str9));
        i1 += r.a(str9, paramae, paramLinkedList, 2, paramBoolean);
      }
      int i3 = n;
      int k = i2;
      j = i1;
      int m = i3;
      while (true)
      {
        rw localrw = new rw();
        String str6;
        String str7;
        e locale2;
        if (!r.iq(paramak.getContent()))
        {
          boolean bool1 = a.cp(paramak.aCl());
          String str2 = "";
          if (bool1)
          {
            String str5 = paramae.fzs.getString();
            str2 = str5 + ":";
          }
          String str3 = str2 + "<msg><img length=\"" + k + "\"";
          if (m > 0)
            str3 = str3 + " hdlength=\"" + m + "\"";
          String str4 = str3 + " /><commenturl></commenturl></msg>";
          aa.d("MicroMsg.MMBakItemImg", "icontent " + str4);
          localrw.sn(str4);
          paramae.fzv = localrw;
          return j;
          i = paramak.getContent().getBytes().length;
          break;
          locale1 = d.Gj().Ba().dF(paramak.AH());
          break label67;
          return -1;
          if (!locale1.AL())
            break label876;
          str6 = d.Gj().Ba().j(locale1.AI(), "", "");
          str7 = "";
          if (!locale1.AM())
            break label870;
          if (locale1 == null)
          {
            locale2 = null;
            label631: if ((locale2 == null) || (locale2.equals(locale1)))
              break label870;
            str7 = d.Gj().Ba().j(locale2.AI(), "", "");
            aa.d("MicroMsg.MMBakItemImg", "hdPath " + str7 + " " + c.ar(str7));
            j += r.a(str7, paramae, paramLinkedList, 3, paramBoolean);
          }
        }
        for (m = c.ar(str7); ; m = 0)
        {
          boolean bool2 = c.as(str6);
          k = 0;
          if (!bool2)
            break;
          k = c.ar(str6);
          if ((au.hX(str6)) || (str6.equals(str7)))
            break;
          aa.d("MicroMsg.MMBakItemImg", "path " + str6 + " " + c.ar(str6));
          j += r.a(str6, paramae, paramLinkedList, 2, paramBoolean);
          break;
          if (locale1.AM())
          {
            locale2 = d.Gj().Ba().dE(locale1.AK());
            if (locale2 != null)
              break label631;
          }
          locale2 = locale1;
          break label631;
          localrw.sn(au.R(paramak.getContent(), ""));
          break label541;
        }
        k = 0;
        m = 0;
      }
    }
  }

  public final int a(String paramString, ae paramae, ak paramak)
  {
    if (paramae.fzv == null)
    {
      aa.d("MicroMsg.MMBakItemImg", "bakitem.getContent() is null");
      return 0;
    }
    String str1 = new String(au.R(paramae.fzv.getString(), ""));
    aa.d("MicroMsg.MMBakItemImg", "msg" + paramae.fzo + " " + str1 + " " + paramae.toString());
    paramak.setContent(str1);
    g localg = d.Gj().Ba();
    e locale3;
    e locale1;
    if (paramak.rO() == 1)
    {
      boolean bool = paramak.Bo() < 0L;
      locale3 = null;
      if (bool)
        locale3 = localg.dG((int)paramak.Bo());
      if ((locale3 != null) && (locale3.AG() != 0L))
        break label818;
      locale1 = localg.dF(paramak.AH());
    }
    while (true)
    {
      Map localMap = u.aL(str1, "msg");
      if ((localMap != null) && (Integer.valueOf(au.R((String)localMap.get(".msg.img.$hdlength"), "0")).intValue() > 0));
      for (int i = 1; ; i = 0)
      {
        String str2 = au.R(r.a(paramae, 3), "");
        String str3 = au.R(r.a(paramae, 2), "");
        if (au.hX(str3));
        for (String str4 = str2; ; str4 = str3)
        {
          byte[] arrayOfByte = r.c(paramae, 1);
          if (arrayOfByte == null)
          {
            String str8 = r.io(str4);
            String str9 = f.h((System.currentTimeMillis() + " ").getBytes());
            String str10 = d.Gr() + "mmbakMeida/" + r.ip(str9);
            String str11 = str10 + str9;
            File localFile = new File(str10);
            if (!localFile.exists())
              localFile.mkdirs();
            int m = h.st(str11);
            if (m > 0)
            {
              if (h.a(str8, Bitmap.CompressFormat.JPEG, str11, m))
                break label452;
              return -1;
              locale1 = localg.dF(paramak.AH());
              break;
            }
            if (!h.a(str8, 100, 100, Bitmap.CompressFormat.JPEG, 90, str11))
              return -1;
            aa.d("MicroMsg.MMBakItemImg", "insert: thumbName = " + str9);
            label452: arrayOfByte = c.h(str11, 0, -1);
          }
          if (arrayOfByte == null)
          {
            aa.e("MicroMsg.MMBakItemImg", "img buf is null");
            return -1;
          }
          String str5 = localg.j(str2, "", "");
          String str6 = localg.j(str4, "", "");
          long l1 = 0L;
          if (locale1.AG() == 0L)
          {
            if (i != 0)
            {
              int k = r.b(paramae, 3);
              l1 = localg.a(arrayOfByte, paramae.fzo, true, str2, k, "", new PString(), new PInt(), new PInt());
              r.a(paramae, 3, str5);
            }
            long l2 = l1;
            int j = r.b(paramae, 2);
            if (j <= 0)
              j = r.b(paramae, 3);
            PString localPString = new PString();
            PInt localPInt1 = new PInt();
            PInt localPInt2 = new PInt();
            long l3 = localg.a(arrayOfByte, paramae.fzo, false, str4, j, "", localPString, localPInt1, localPInt2);
            r.a(paramae, 2, str6);
            if (l3 > 0L)
            {
              paramak.uN(localPString.value);
              paramak.bXI = localPInt1.value;
              paramak.bXJ = localPInt2.value;
              if (l2 > 0L)
              {
                e locale2 = d.Gj().Ba().E(l3);
                locale2.dB((int)l2);
                d.Gj().Ba().a(l3, locale2);
              }
            }
          }
          while (true)
          {
            a.d(paramak);
            return 0;
            return -1;
            String str7 = locale1.AJ();
            if ((str7 != null) && (str7.startsWith("THUMBNAIL_DIRPATH://")))
              paramak.uN(str7);
            else
              paramak.uN("THUMBNAIL://" + locale1.AG());
          }
        }
      }
      label818: locale1 = locale3;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.ah
 * JD-Core Version:    0.6.2
 */