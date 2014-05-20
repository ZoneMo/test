.class final Lcom/tencent/mm/plugin/search/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field final synthetic ejj:Lcom/tencent/mm/plugin/search/ui/e;

.field final synthetic ejk:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/ui/e;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/ui/h;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    iput p2, p0, Lcom/tencent/mm/plugin/search/ui/h;->ejk:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1286
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 1288
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/h;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/ui/e;->a(Lcom/tencent/mm/plugin/search/ui/e;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/h;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/ui/e;->a(Lcom/tencent/mm/plugin/search/ui/e;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1290
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/h;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/ui/e;->b(Lcom/tencent/mm/plugin/search/ui/e;)Landroid/app/Dialog;

    .line 1298
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const/4 v0, -0x4

    if-ne p2, v0, :cond_2

    .line 1299
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/h;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/ui/e;->c(Lcom/tencent/mm/plugin/search/ui/e;)Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bdh:I

    invoke-static {v0, v1, v4, v6, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IIZLandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 1333
    :cond_1
    :goto_0
    return-void

    .line 1303
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    .line 1304
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/h;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/ui/e;->c(Lcom/tencent/mm/plugin/search/ui/e;)Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/h;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-static {v1}, Lcom/tencent/mm/plugin/search/ui/e;->c(Lcom/tencent/mm/plugin/search/ui/e;)Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    move-result-object v1

    sget v2, Lcom/tencent/mm/n;->bnl:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1305
    const-string v0, "MicroMsg.SearchContactUI"

    const-string v1, "Search contact failed: %d, %d."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1309
    :cond_4
    check-cast p4, Lcom/tencent/mm/modelsimple/aj;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/aj;->CB()Lcom/tencent/mm/protocal/a/sj;

    move-result-object v0

    .line 1311
    iget v1, v0, Lcom/tencent/mm/protocal/a/sj;->fKH:I

    if-lez v1, :cond_8

    .line 1313
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/sj;->fKI:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1314
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/h;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/ui/e;->c(Lcom/tencent/mm/plugin/search/ui/e;)Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bdh:I

    invoke-static {v0, v1, v4, v6, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IIZLandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 1318
    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1319
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/sj;->fKI:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/sh;

    iget v2, p0, Lcom/tencent/mm/plugin/search/ui/h;->ejk:I

    iget-object v3, v0, Lcom/tencent/mm/protocal/a/sh;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v3}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Contact_User"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_Nick"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v5}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_PyInitial"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v5}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_QuanPin"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v5}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_Alias"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->cqt:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_Sex"

    iget v5, v0, Lcom/tencent/mm/protocal/a/sh;->cqq:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "Contact_VUser_Info"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->fNq:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_VUser_Info_Flag"

    iget v5, v0, Lcom/tencent/mm/protocal/a/sh;->fNp:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "Contact_KWeibo_flag"

    iget v5, v0, Lcom/tencent/mm/protocal/a/sh;->fNt:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "Contact_KWeibo"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->fNr:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_KWeiboNick"

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->fNs:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_Scene"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Contact_KHideExpose"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "Contact_RegionCode"

    iget-object v4, v0, Lcom/tencent/mm/protocal/a/sh;->cqx:Ljava/lang/String;

    iget-object v5, v0, Lcom/tencent/mm/protocal/a/sh;->Tu:Ljava/lang/String;

    iget-object v6, v0, Lcom/tencent/mm/protocal/a/sh;->Tv:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/storage/RegionCodeDecoder;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_Signature"

    iget-object v4, v0, Lcom/tencent/mm/protocal/a/sh;->cqr:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_BrandList"

    iget-object v4, v0, Lcom/tencent/mm/protocal/a/sh;->cqy:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Contact_KSnsIFlag"

    iget-object v4, v0, Lcom/tencent/mm/protocal/a/sh;->fNv:Lcom/tencent/mm/protocal/a/vp;

    iget v4, v4, Lcom/tencent/mm/protocal/a/vp;->cqz:I

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Contact_KSnsBgId"

    iget-object v4, v0, Lcom/tencent/mm/protocal/a/sh;->fNv:Lcom/tencent/mm/protocal/a/vp;

    iget-wide v4, v4, Lcom/tencent/mm/protocal/a/vp;->cqB:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "Contact_KSnsBgUrl"

    iget-object v4, v0, Lcom/tencent/mm/protocal/a/sh;->fNv:Lcom/tencent/mm/protocal/a/vp;

    iget-object v4, v4, Lcom/tencent/mm/protocal/a/vp;->cqA:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/tencent/mm/p/a;

    invoke-direct {v2}, Lcom/tencent/mm/p/a;-><init>()V

    iput-object v3, v2, Lcom/tencent/mm/p/a;->field_username:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/mm/protocal/a/sh;->cqy:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/mm/p/a;->field_brandList:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/sh;->fNw:Lcom/tencent/mm/protocal/a/dl;

    if-eqz v0, :cond_6

    iget v3, v0, Lcom/tencent/mm/protocal/a/dl;->cqC:I

    iput v3, v2, Lcom/tencent/mm/p/a;->field_brandFlag:I

    iget-object v3, v0, Lcom/tencent/mm/protocal/a/dl;->cqE:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/mm/p/a;->field_brandInfo:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/mm/protocal/a/dl;->cqD:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/mm/p/a;->field_extInfo:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/dl;->cqF:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/mm/p/a;->field_brandIconURL:Ljava/lang/String;

    :cond_6
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/p/k;->b(Lcom/tencent/mm/p/a;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/p/k;->a(Lcom/tencent/mm/p/a;)Z

    .line 1321
    :cond_7
    sget-object v0, Lcom/tencent/mm/plugin/search/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/h;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-static {v2}, Lcom/tencent/mm/plugin/search/ui/e;->c(Lcom/tencent/mm/plugin/search/ui/e;)Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/e;->c(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1323
    :cond_8
    iget-object v1, v0, Lcom/tencent/mm/protocal/a/sj;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v1

    .line 1325
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1328
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1329
    iget v2, p0, Lcom/tencent/mm/plugin/search/ui/h;->ejk:I

    invoke-static {v1, v0, v2}, Lcom/tencent/mm/pluginsdk/ui/tools/c;->a(Landroid/content/Intent;Lcom/tencent/mm/protocal/a/sj;I)V

    .line 1330
    sget-object v0, Lcom/tencent/mm/plugin/search/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/h;->ejj:Lcom/tencent/mm/plugin/search/ui/e;

    invoke-static {v2}, Lcom/tencent/mm/plugin/search/ui/e;->c(Lcom/tencent/mm/plugin/search/ui/e;)Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/e;->c(Landroid/content/Intent;Landroid/content/Context;)V

    goto/16 :goto_0
.end method
