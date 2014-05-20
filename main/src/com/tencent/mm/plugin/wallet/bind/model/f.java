package com.tencent.mm.plugin.wallet.bind.model;

import android.util.SparseArray;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class f extends a
{
  private int eWV = 3;
  private List eXD = null;
  private String eXE = null;
  private boolean eXF = false;

  public f(int paramInt, String paramString)
  {
    this.eWV = paramInt;
    HashMap localHashMap = new HashMap();
    localHashMap.put("req_key", paramString);
    localHashMap.put("flag", "3");
    if ((paramInt > 3) || (paramInt <= 0))
      paramInt = 3;
    localHashMap.put("bank_card_tag", String.valueOf(paramInt));
    m(localHashMap);
    this.eXF = true;
  }

  public f(String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("req_key", paramString2);
    localHashMap.put("flag", "2");
    if (!cj.hX(paramString1))
      localHashMap.put("card_id", paramString1);
    m(localHashMap);
  }

  public final int TN()
  {
    return 8;
  }

  public final void a(int paramInt, String paramString, JSONObject paramJSONObject)
  {
    int i = 0;
    this.eXD = new ArrayList();
    while (true)
    {
      int k;
      try
      {
        this.eXE = paramJSONObject.optString("time_stamp");
        JSONArray localJSONArray1 = paramJSONObject.getJSONArray("Array");
        int j = localJSONArray1.length();
        k = 0;
        if (k < j)
        {
          JSONObject localJSONObject1 = localJSONArray1.getJSONObject(k);
          ElementQuery localElementQuery = new ElementQuery();
          localElementQuery.f(localJSONObject1);
          if (Bankcard.aH(this.eWV, localElementQuery.eWV))
            this.eXD.add(localElementQuery);
        }
        else
        {
          SparseArray localSparseArray = new SparseArray();
          JSONArray localJSONArray2 = paramJSONObject.getJSONArray("cre_type_map");
          int m = localJSONArray2.length();
          if (i < m)
          {
            JSONObject localJSONObject2 = localJSONArray2.getJSONObject(i);
            int n = localJSONObject2.optInt("key", 0);
            if (n <= 0)
              break label202;
            localSparseArray.put(n, localJSONObject2.getString("val"));
            break label202;
          }
          if (localSparseArray.size() > 0)
            c.anX().a(localSparseArray);
          return;
        }
      }
      catch (JSONException localJSONException)
      {
        return;
      }
      k++;
      continue;
      label202: i++;
    }
  }

  public final boolean anl()
  {
    return this.eXF;
  }

  public final List anm()
  {
    return this.eXD;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.model.f
 * JD-Core Version:    0.6.2
 */