package com.tencent.mm.model;

import com.tencent.mm.pointers.PInt;
import com.tencent.mm.pointers.PString;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.storage.n;
import com.tencent.mm.storage.o;
import com.tencent.mm.storage.r;
import com.tencent.mm.storage.s;

final class bg
  implements r
{
  bg(be parambe)
  {
  }

  public final void a(n paramn, o paramo)
  {
    int i = 1;
    if (paramn == null)
      break label6;
    label6: 
    while ((!i.ty(paramn.getUsername())) && (!i.tA(paramn.getUsername())) && (!i.tC(paramn.getUsername())) && (!w.cw(paramn.getUsername())))
      return;
    if (i.tC(paramn.getUsername()))
    {
      n localn6 = paramo.tZ("floatbottle");
      int m = 0;
      if (localn6 == null)
      {
        localn6 = new n("floatbottle");
        m = i;
      }
      localn6.ca(i);
      localn6.bY(x.tU());
      ak localak3 = be.uz().sw().t(8, " and not ( type = 10000 and isSend != 2 ) ");
      if ((localak3 != null) && (localak3.Bo() > 0L))
      {
        localn6.t(localak3);
        localn6.setContent(i.tE(localak3.aCl()) + ":" + localak3.getContent());
        localn6.bP(Integer.toString(localak3.getType()));
        s locals3 = paramo.nR();
        if (locals3 != null)
        {
          PString localPString5 = new PString();
          PString localPString6 = new PString();
          PInt localPInt3 = new PInt();
          localak3.uK("floatbottle");
          localak3.setContent(localn6.field_content);
          locals3.a(localak3, localPString5, localPString6, localPInt3);
          localn6.field_digest = localPString5.value;
          localn6.field_digestUser = localPString6.value;
          localn6.field_hasTrunc = localPInt3.value;
        }
      }
      while (m != 0)
      {
        paramo.c(localn6);
        return;
        localn6.aAH();
      }
      paramo.a(localn6, localn6.getUsername());
      return;
    }
    ak localak1;
    int j;
    Object localObject1;
    n localn2;
    if ((i.ty(paramn.getUsername())) || (i.tA(paramn.getUsername())))
    {
      boolean bool = i.ty(paramn.getUsername());
      localak1 = null;
      j = 0;
      localObject1 = null;
      if (bool)
      {
        localn2 = paramo.tZ("tmessage");
        if (localn2 != null)
          break label1210;
        n localn3 = new n("tmessage");
        j = i;
        localObject1 = localn3;
      }
    }
    while (true)
    {
      ap localap2 = be.uz().sw();
      Long localLong2 = (Long)be.uz().sr().get(12294);
      long l2;
      n localn1;
      Object localObject2;
      label492: Long localLong1;
      long l1;
      if (localLong2 == null)
      {
        l2 = 0L;
        localObject1.bY(localap2.h(4, l2));
        localak1 = be.uz().sw().t(4, " and not ( type = 10000 and isSend != 2 ) ");
        if (!i.tA(paramn.getUsername()))
          break label1200;
        localn1 = paramo.tZ("qmessage");
        if (localn1 != null)
          break label1190;
        localObject2 = new n("qmessage");
        ap localap1 = be.uz().sw();
        localLong1 = (Long)be.uz().sr().get(12295);
        if (localLong1 != null)
          break label745;
        l1 = 0L;
        label525: ((n)localObject2).bY(localap1.h(2, l1));
        localak1 = be.uz().sw().t(2, " and not ( type = 10000 and isSend != 2 ) ");
      }
      while (true)
      {
        if ((localak1 != null) && (localak1.Bo() > 0L))
        {
          ((n)localObject2).t(localak1);
          ((n)localObject2).setContent(localak1.aCl() + ":" + localak1.getContent());
          ((n)localObject2).bP(Integer.toString(localak1.getType()));
          s locals1 = paramo.nR();
          if (locals1 != null)
          {
            PString localPString1 = new PString();
            PString localPString2 = new PString();
            PInt localPInt1 = new PInt();
            localak1.uK("qmessage");
            localak1.setContent(((n)localObject2).field_content);
            locals1.a(localak1, localPString1, localPString2, localPInt1);
            ((n)localObject2).field_digest = localPString1.value;
            ((n)localObject2).field_digestUser = localPString2.value;
            ((n)localObject2).field_hasTrunc = localPInt1.value;
          }
        }
        while (true)
        {
          if (i == 0)
            break label763;
          paramo.c((n)localObject2);
          return;
          l2 = localLong2.longValue();
          break;
          label745: l1 = localLong1.longValue();
          break label525;
          ((n)localObject2).aAH();
        }
        label763: paramo.a((n)localObject2, ((n)localObject2).getUsername());
        return;
        n localn4;
        n localn5;
        if ((w.cw(paramn.getUsername())) && ("officialaccounts".equals(paramn.field_parentRef)))
        {
          localn4 = paramo.tZ("officialaccounts");
          if (localn4 != null)
            break label1180;
          localn5 = new n("officialaccounts");
        }
        for (int k = i; ; k = 0)
        {
          localn5.bY(be.uz().sx().aAN());
          Object[] arrayOfObject = new Object[i];
          arrayOfObject[0] = Integer.valueOf(localn5.rN());
          aa.d("MicroMsg.MMCore", "of cvs count is %d", arrayOfObject);
          String str = be.uz().sx().aAO();
          ak localak2 = be.uz().sw().uW(str);
          if ((localak2 != null) && (localak2.Bo() > 0L))
          {
            localn5.t(localak2);
            localn5.setContent(localak2.aCl() + ":" + localak2.getContent());
            localn5.bP(Integer.toString(localak2.getType()));
            s locals2 = paramo.nR();
            if (locals2 != null)
            {
              PString localPString3 = new PString();
              PString localPString4 = new PString();
              PInt localPInt2 = new PInt();
              localak2.uK("officialaccounts");
              localak2.setContent(localn5.field_content);
              locals2.a(localak2, localPString3, localPString4, localPInt2);
              localn5.field_digest = localPString3.value;
              localn5.field_digestUser = localPString4.value;
              localn5.field_hasTrunc = localPInt2.value;
            }
            label1061: if (k == 0)
              break label1165;
            paramo.c(localn5);
          }
          while (true)
          {
            if (!"@blacklist".equals(paramn.field_parentRef))
              break label1178;
            i locali = be.uz().su().tO(paramn.getUsername());
            if ((locali == null) || (cj.hX(locali.getUsername())) || (locali.rd()))
              break;
            o localo = be.uz().sx();
            String[] arrayOfString = new String[i];
            arrayOfString[0] = paramn.getUsername();
            localo.a(arrayOfString, "");
            return;
            localn5.aAH();
            break label1061;
            label1165: paramo.a(localn5, localn5.getUsername());
          }
          label1178: break label6;
          label1180: localn5 = localn4;
        }
        label1190: i = j;
        localObject2 = localn1;
        break label492;
        label1200: i = j;
        localObject2 = localObject1;
      }
      label1210: localObject1 = localn2;
      j = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.bg
 * JD-Core Version:    0.6.2
 */