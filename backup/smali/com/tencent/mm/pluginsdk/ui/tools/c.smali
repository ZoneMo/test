.class public final Lcom/tencent/mm/pluginsdk/ui/tools/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Intent;Lcom/tencent/mm/protocal/a/sj;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/sj;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "Contact_User"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const-string v1, "Contact_Nick"

    iget-object v2, p1, Lcom/tencent/mm/protocal/a/sj;->fNa:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string v1, "Contact_PyInitial"

    iget-object v2, p1, Lcom/tencent/mm/protocal/a/sj;->fEG:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v1, "Contact_QuanPin"

    iget-object v2, p1, Lcom/tencent/mm/protocal/a/sj;->fEH:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string v1, "Contact_Alias"

    iget-object v2, p1, Lcom/tencent/mm/protocal/a/sj;->cqt:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string v1, "Contact_Sex"

    iget v2, p1, Lcom/tencent/mm/protocal/a/sj;->cqq:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    const-string v1, "Contact_VUser_Info"

    iget-object v2, p1, Lcom/tencent/mm/protocal/a/sj;->fNq:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v1, "Contact_VUser_Info_Flag"

    iget v2, p1, Lcom/tencent/mm/protocal/a/sj;->fNp:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const-string v1, "Contact_KWeibo_flag"

    iget v2, p1, Lcom/tencent/mm/protocal/a/sj;->fNt:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    const-string v1, "Contact_KWeibo"

    iget-object v2, p1, Lcom/tencent/mm/protocal/a/sj;->fNr:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v1, "Contact_KWeiboNick"

    iget-object v2, p1, Lcom/tencent/mm/protocal/a/sj;->fNs:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v1, "Contact_Scene"

    invoke-virtual {p0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    const-string v1, "Contact_KHideExpose"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    const-string v1, "Contact_RegionCode"

    iget-object v2, p1, Lcom/tencent/mm/protocal/a/sj;->cqx:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/mm/protocal/a/sj;->Tu:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/mm/protocal/a/sj;->Tv:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/storage/RegionCodeDecoder;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v1, "Contact_Signature"

    iget-object v2, p1, Lcom/tencent/mm/protocal/a/sj;->cqr:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "Contact_BrandList"

    iget-object v2, p1, Lcom/tencent/mm/protocal/a/sj;->cqy:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, "Contact_KSnsIFlag"

    iget-object v2, p1, Lcom/tencent/mm/protocal/a/sj;->fNv:Lcom/tencent/mm/protocal/a/vp;

    iget v2, v2, Lcom/tencent/mm/protocal/a/vp;->cqz:I

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const-string v1, "Contact_KSnsBgId"

    iget-object v2, p1, Lcom/tencent/mm/protocal/a/sj;->fNv:Lcom/tencent/mm/protocal/a/vp;

    iget-wide v2, v2, Lcom/tencent/mm/protocal/a/vp;->cqB:J

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 42
    const-string v1, "Contact_KSnsBgUrl"

    iget-object v2, p1, Lcom/tencent/mm/protocal/a/sj;->fNv:Lcom/tencent/mm/protocal/a/vp;

    iget-object v2, v2, Lcom/tencent/mm/protocal/a/vp;->cqA:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    new-instance v1, Lcom/tencent/mm/p/a;

    invoke-direct {v1}, Lcom/tencent/mm/p/a;-><init>()V

    .line 46
    iput-object v0, v1, Lcom/tencent/mm/p/a;->field_username:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/sj;->cqy:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/p/a;->field_brandList:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/tencent/mm/protocal/a/sj;->fNw:Lcom/tencent/mm/protocal/a/dl;

    .line 50
    if-eqz v0, :cond_0

    .line 51
    iget v2, v0, Lcom/tencent/mm/protocal/a/dl;->cqC:I

    iput v2, v1, Lcom/tencent/mm/p/a;->field_brandFlag:I

    .line 52
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/dl;->cqE:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/p/a;->field_brandInfo:Ljava/lang/String;

    .line 53
    iget-object v2, v0, Lcom/tencent/mm/protocal/a/dl;->cqD:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/p/a;->field_extInfo:Ljava/lang/String;

    .line 54
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/dl;->cqF:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/p/a;->field_brandIconURL:Ljava/lang/String;

    .line 58
    :cond_0
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->b(Lcom/tencent/mm/p/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->a(Lcom/tencent/mm/p/a;)Z

    .line 61
    :cond_1
    return-void
.end method
