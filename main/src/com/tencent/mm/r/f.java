package com.tencent.mm.r;

import com.tencent.mm.model.aj;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.al;
import com.tencent.mm.storage.ao;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.o;
import java.util.LinkedList;

public final class f extends aj
{
  public final boolean cn(int paramInt)
  {
    return (paramInt != 0) && (paramInt < 604307701);
  }

  public final String getTag()
  {
    return "MicroMsg.FMessageDataTransfer";
  }

  public final void transfer(int paramInt)
  {
    ak[] arrayOfak;
    if ((paramInt != 0) && (paramInt < 604307701))
    {
      arrayOfak = be.uz().sw().am("fmessage", 20);
      if (arrayOfak == null)
        aa.e("MicroMsg.FMessageDataTransfer", "transfer fail, msglist is empty");
    }
    else
    {
      return;
    }
    com.tencent.mm.ah.k.Dy();
    aa.d("MicroMsg.FMessageDataTransfer", "transfer, msgList count = " + arrayOfak.length);
    int i = arrayOfak.length;
    int j = 0;
    if (j < i)
    {
      ak localak = arrayOfak[j];
      if ((localak == null) || (localak.Bo() == 0L))
        aa.e("MicroMsg.FMessageDataTransfer", "transfer fail, msg is null, skip this msg");
      ao localao;
      while (true)
      {
        j++;
        break;
        aa.d("MicroMsg.FMessageDataTransfer", "transfer msg type = " + localak.getType());
        String str = localak.getContent();
        if ((str == null) || (str.length() == 0))
          aa.e("MicroMsg.FMessageDataTransfer", "transfer fail, content is null, skip this msg, id = " + localak.Bo());
        else
          switch (localak.getType())
          {
          case 38:
          case 39:
          default:
            aa.i("MicroMsg.FMessageDataTransfer", "no need to transfer, msgtype = " + localak.getType());
            break;
          case 40:
            aa.d("MicroMsg.FMessageDataTransfer", "processFMessage, msg content = " + localak.getContent());
            al localal = al.uQ(localak.getContent());
            com.tencent.mm.ah.e locale2 = new com.tencent.mm.ah.e();
            locale2.field_createTime = localak.DL();
            locale2.field_isSend = 0;
            locale2.field_msgContent = localak.getContent();
            locale2.field_svrId = localak.AH();
            locale2.field_talker = localal.aCu();
            locale2.field_type = 0;
            com.tencent.mm.ah.k.Dx().a(locale2);
            break;
          case 37:
            aa.d("MicroMsg.FMessageDataTransfer", "processVerifyMsg, msg content = " + localak.getContent());
            localao = ao.uU(localak.getContent());
            if ((au.hX(localao.aCu())) || ((localao.Gf() != 18) && (!bv.cu(localao.Gf()))))
              break label451;
            aa.i("MicroMsg.FMessageDataTransfer", "processVerifyMsg, skip lbs & shake, scene = " + localao.Gf());
          }
      }
      label451: com.tencent.mm.ah.e locale1 = new com.tencent.mm.ah.e();
      locale1.field_createTime = localak.DL();
      locale1.field_isSend = 0;
      locale1.field_msgContent = localak.getContent();
      locale1.field_svrId = localak.AH();
      locale1.field_talker = localao.aCu();
      switch (localao.aCN())
      {
      case 3:
      case 4:
      default:
        locale1.field_type = 1;
      case 2:
      case 5:
      case 6:
      }
      while (true)
      {
        com.tencent.mm.ah.k.Dx().a(locale1);
        break;
        locale1.field_type = 1;
        continue;
        locale1.field_type = 2;
        continue;
        locale1.field_type = 3;
      }
    }
    be.uz().sr().set(143618, Integer.valueOf(0));
    com.tencent.mm.ah.k.Dy().Do();
    aa.d("MicroMsg.FMessageDataTransfer", "transfer, try to delete fmessage contact & conversation");
    be.uz().su().tU("fmessage");
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add("fmessage");
    be.uz().sx().T(localLinkedList);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.r.f
 * JD-Core Version:    0.6.2
 */