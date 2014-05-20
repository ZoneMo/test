package com.tencent.mm.pluginsdk.ui.tools;

import android.content.Intent;
import com.tencent.mm.p.a;
import com.tencent.mm.p.ab;
import com.tencent.mm.p.k;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.dl;
import com.tencent.mm.protocal.a.sj;
import com.tencent.mm.protocal.a.vp;
import com.tencent.mm.storage.RegionCodeDecoder;

public final class c
{
  public static void a(Intent paramIntent, sj paramsj, int paramInt)
  {
    String str = an.a(paramsj.fEI);
    paramIntent.putExtra("Contact_User", str);
    paramIntent.putExtra("Contact_Nick", an.a(paramsj.fNa));
    paramIntent.putExtra("Contact_PyInitial", an.a(paramsj.fEG));
    paramIntent.putExtra("Contact_QuanPin", an.a(paramsj.fEH));
    paramIntent.putExtra("Contact_Alias", paramsj.cqt);
    paramIntent.putExtra("Contact_Sex", paramsj.cqq);
    paramIntent.putExtra("Contact_VUser_Info", paramsj.fNq);
    paramIntent.putExtra("Contact_VUser_Info_Flag", paramsj.fNp);
    paramIntent.putExtra("Contact_KWeibo_flag", paramsj.fNt);
    paramIntent.putExtra("Contact_KWeibo", paramsj.fNr);
    paramIntent.putExtra("Contact_KWeiboNick", paramsj.fNs);
    paramIntent.putExtra("Contact_Scene", paramInt);
    paramIntent.putExtra("Contact_KHideExpose", true);
    paramIntent.putExtra("Contact_RegionCode", RegionCodeDecoder.w(paramsj.cqx, paramsj.Tu, paramsj.Tv));
    paramIntent.putExtra("Contact_Signature", paramsj.cqr);
    paramIntent.putExtra("Contact_BrandList", paramsj.cqy);
    paramIntent.putExtra("Contact_KSnsIFlag", paramsj.fNv.cqz);
    paramIntent.putExtra("Contact_KSnsBgId", paramsj.fNv.cqB);
    paramIntent.putExtra("Contact_KSnsBgUrl", paramsj.fNv.cqA);
    a locala = new a();
    locala.field_username = str;
    locala.field_brandList = paramsj.cqy;
    dl localdl = paramsj.fNw;
    if (localdl != null)
    {
      locala.field_brandFlag = localdl.cqC;
      locala.field_brandInfo = localdl.cqE;
      locala.field_extInfo = localdl.cqD;
      locala.field_brandIconURL = localdl.cqF;
    }
    if (!ab.ye().b(locala))
      ab.ye().a(locala);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.c
 * JD-Core Version:    0.6.2
 */