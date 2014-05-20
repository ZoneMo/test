package com.tencent.mm.plugin.wallet.order.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Orders
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new b();
  public String crH;
  public String dCP;
  public int eWV;
  public String etE = "";
  public String faP = "";
  public String faQ = "0";
  public double faR = 0.0D;
  public String faS;
  public String faT;
  public int faU;
  public boolean faV = false;
  public String faW = "";
  public String faX = "";
  public String faY;
  public Set faZ = new HashSet();
  public List fba = new ArrayList();
  public String logoUrl;
  public String username;

  public Orders()
  {
  }

  public Orders(Parcel paramParcel)
  {
    this.faP = paramParcel.readString();
    this.etE = paramParcel.readString();
    this.faQ = paramParcel.readString();
    this.faR = paramParcel.readDouble();
    this.eWV = paramParcel.readInt();
    this.dCP = paramParcel.readString();
    this.username = paramParcel.readString();
    this.crH = paramParcel.readString();
    this.logoUrl = paramParcel.readString();
    this.faS = paramParcel.readString();
    this.faT = paramParcel.readString();
    this.faU = paramParcel.readInt();
    if (paramParcel.readInt() == i);
    while (true)
    {
      this.faV = i;
      this.faW = paramParcel.readString();
      this.faX = paramParcel.readString();
      paramParcel.readTypedList(this.fba, Orders.Commodity.CREATOR);
      this.faY = paramParcel.readString();
      this.faZ = pG(this.faY);
      return;
      i = 0;
    }
  }

  public static Orders a(JSONObject paramJSONObject, Orders paramOrders)
  {
    if ((paramJSONObject != null) && (paramOrders != null));
    try
    {
      List localList = paramOrders.fba;
      JSONObject localJSONObject1 = paramJSONObject.optJSONObject("appservice");
      if (localJSONObject1 != null)
      {
        paramOrders.username = localJSONObject1.optString("username");
        paramOrders.crH = localJSONObject1.optString("nickname");
        paramOrders.logoUrl = localJSONObject1.optString("logo_round_url");
        paramOrders.faS = localJSONObject1.optString("app_recommend_desc");
        paramOrders.faT = localJSONObject1.optString("app_telephone");
        paramOrders.faU = localJSONObject1.optInt("recommend_level", 2);
        paramOrders.faX = localJSONObject1.optString("share_to_friends_url");
      }
      paramOrders.faW = paramJSONObject.optString("pay_result_tips");
      JSONArray localJSONArray = paramJSONObject.getJSONArray("payresult");
      int i = localJSONArray.length();
      int j = 0;
      while (j < i)
      {
        JSONObject localJSONObject2 = localJSONArray.getJSONObject(j);
        String str = localJSONObject2.getString("transaction_id");
        if (!cj.hX(str))
        {
          Iterator localIterator = localList.iterator();
          while (localIterator.hasNext())
          {
            Orders.Commodity localCommodity = (Orders.Commodity)localIterator.next();
            if (str.equals(localCommodity.dCN))
            {
              localCommodity.dCK = localJSONObject2.getString("pay_status");
              localCommodity.dCL = localJSONObject2.getString("pay_status_name");
              localCommodity.dCO = localJSONObject2.optString("buy_bank_name");
              localCommodity.dCM = localJSONObject2.optInt("pay_timestamp");
            }
          }
        }
        j++;
        continue;
        aa.w("MicroMsg.Orders", "oldOrders is null");
      }
      return paramOrders;
    }
    catch (JSONException localJSONException)
    {
    }
    return paramOrders;
  }

  public static Orders g(JSONObject paramJSONObject)
  {
    int i = 0;
    int j = 1;
    if (paramJSONObject != null)
    {
      Orders localOrders = new Orders();
      while (true)
      {
        try
        {
          localOrders.faR = (paramJSONObject.getDouble("total_fee") / 100.0D);
          localOrders.faQ = paramJSONObject.getString("num");
          localOrders.eWV = paramJSONObject.optInt("bank_card_tag", 1);
          localOrders.dCP = paramJSONObject.optString("fee_type", "");
          JSONArray localJSONArray = paramJSONObject.getJSONArray("Array");
          if (paramJSONObject.optInt("support_all_bank", 0) != j)
            break label418;
          if (j != 0)
            localOrders.faZ = new HashSet();
          int k = localJSONArray.length();
          if (i < k)
          {
            JSONObject localJSONObject = localJSONArray.getJSONObject(i);
            Orders.Commodity localCommodity = new Orders.Commodity();
            localCommodity.desc = localJSONObject.getString("desc");
            localCommodity.dCJ = (localJSONObject.getInt("fee") / 100.0D);
            localCommodity.dCI = localJSONObject.optInt("count", 1);
            localCommodity.dCK = localJSONObject.getString("pay_status");
            localCommodity.dCO = localJSONObject.optString("buy_bank_name");
            localCommodity.dCL = localJSONObject.getString("pay_status_name");
            localCommodity.dCG = localJSONObject.optString("spid");
            localCommodity.dCH = localJSONObject.optString("sp_name");
            localCommodity.dCM = localJSONObject.optInt("modify_timestamp");
            localCommodity.dCN = localJSONObject.getString("transaction_id");
            localCommodity.dCP = localJSONObject.optString("fee_type");
            if (cj.hX(localOrders.dCP))
              localOrders.dCP = localCommodity.dCP;
            localCommodity.dCQ = localJSONObject.optString("appusername");
            localCommodity.dCs = localJSONObject.optString("app_telephone");
            localOrders.fba.add(localCommodity);
            if (j == 0)
            {
              localOrders.faY = localJSONObject.optString("support_bank");
              localOrders.faZ = pG(localOrders.faY);
            }
          }
          else
          {
            if (paramJSONObject.has("is_open_fee_protocal"))
            {
              localOrders.faV = com.tencent.mm.plugin.wallet.e.b.a(paramJSONObject, "is_open_fee_protocal");
              return localOrders;
            }
            localOrders.faV = Bankcard.aH(localOrders.eWV, 2);
            return localOrders;
          }
        }
        catch (JSONException localJSONException)
        {
          return localOrders;
        }
        i++;
        continue;
        label418: j = 0;
      }
    }
    return null;
  }

  private static HashSet pG(String paramString)
  {
    HashSet localHashSet = new HashSet();
    if (!cj.hX(paramString))
    {
      String[] arrayOfString = paramString.split("\\|");
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        localHashSet.add(arrayOfString[j]);
      if (localHashSet.size() > 0)
        localHashSet.retainAll(localHashSet);
    }
    else
    {
      return localHashSet;
    }
    localHashSet.clear();
    return localHashSet;
  }

  public int describeContents()
  {
    return 0;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("reqKey:").append(this.faP).append("\n");
    localStringBuilder.append("token").append(this.etE).append("\n");
    localStringBuilder.append("num").append(this.faQ).append("\n");
    localStringBuilder.append("totalFee").append(this.faR).append("\n");
    return localStringBuilder.toString();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.faP);
    paramParcel.writeString(this.etE);
    paramParcel.writeString(this.faQ);
    paramParcel.writeDouble(this.faR);
    paramParcel.writeInt(this.eWV);
    paramParcel.writeString(this.dCP);
    paramParcel.writeString(this.username);
    paramParcel.writeString(this.crH);
    paramParcel.writeString(this.logoUrl);
    paramParcel.writeString(this.faS);
    paramParcel.writeString(this.faT);
    paramParcel.writeInt(this.faU);
    if (this.faV);
    for (int i = 1; ; i = 0)
    {
      paramParcel.writeInt(i);
      paramParcel.writeString(this.faW);
      paramParcel.writeString(this.faX);
      paramParcel.writeTypedList(this.fba);
      paramParcel.writeString(this.faY);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.order.model.Orders
 * JD-Core Version:    0.6.2
 */